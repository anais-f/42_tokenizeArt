
const CONTRACT_ADDRESS = "0xCd613D6b6CeF6e0BcD8EBA3207B0acA49e5c1Db9";
const ABI = [
    "function safeMint(address to)",
    "function totalSupply() view returns (uint256)",
    "function tokenURI(uint256 tokenId) view returns (string)",
    "function ownerOf(uint256 tokenId) view returns (address)",
    "function balanceOf(address owner) view returns (uint256)",
    "function transferFrom(address from, address to, uint256 tokenId)",
    "function owner() view returns (address)",
    "function MAX_SUPPLY() view returns (uint256)",
    "event Transfer(address indexed from, address indexed to, uint256 indexed tokenId)"
];

const CONTRACT_ADDRESS_ONCHAIN = "0x";
const ABI_ONCHAIN = [ /* Your Contract ABI On Chain Here */ ];

const CONTRACTS = {
    TokenizeArt: { address: CONTRACT_ADDRESS, abi: ABI },
    TokenizeArtOnChain: { address: CONTRACT_ADDRESS_ONCHAIN, abi: ABI_ONCHAIN }
};

let signer = null; // for read-write operations
let provider = null; // for read-only operations
let contract = null; // for interacting with the contract
let userAddress = null; // to store the connected user's address

const walletStatusEl = document.getElementById("walletStatus");
const contractSelectEl = document.getElementById("contractSelect");
const supplyEl = document.getElementById("supply");
const connectBtnEl = document.getElementById("connectBtn");
const mintBtnEl = document.getElementById("mintBtn");


async function connectWallet() {
    if (!window.ethereum) {
        alert("MetaMask is not installed!");
        return;
    }

    try {
        // create the provider via Metamask
        provider = new ethers.BrowserProvider(window.ethereum);

        // popup to connect the wallet
        await provider.send("eth_requestAccounts", []);

        // get the signer (the connected wallet)
        signer = await provider.getSigner();
        userAddress = signer.address;

        // instantiate the contract with the signer for read-write operations
        let selected = contractSelectEl.value;
        contract = new ethers.Contract(CONTRACTS[selected].address, CONTRACTS[selected].abi, signer);

        // update UI
        walletStatusEl.textContent = `Connected: ${userAddress}`;
        connectBtnEl.style.display = "none";
        mintBtnEl.disabled = false;

        await loadContractInfo();

    }
    catch (error) {
        console.error("Error connecting wallet:", error);
        alert("Failed to connect wallet. Please try again.");
    }   
}


async function loadContractInfo() {
    try {
        const supplyMinted = await contract.totalSupply();
        const maxSupply = await contract.MAX_SUPPLY();
        supplyEl.textContent = `${supplyMinted.toString()} / ${maxSupply.toString()}`;
    }
    catch (error) {
        console.error("Error loading contract info:", error);
    }
}



async function mintNFT() {
    
}


connectBtnEl.addEventListener("click", connectWallet);
mintBtnEl.addEventListener("click", mintNFT);
contractSelectEl.addEventListener("change", async () => {
    if (signer) {
        let selected = contractSelectEl.value;
        contract = new ethers.Contract(CONTRACTS[selected].address, CONTRACTS[selected].abi, signer);
        await loadContractInfo();
    }
});