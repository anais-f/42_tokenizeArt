# Mint Guide - Creating Metadata

## Step 1: Upload Image to Pinata

1. Go to [pinata.cloud](https://pinata.cloud)
2. Click "Upload" → Select your image file
3. **Copy the CID** (Content Identifier)

**Example:**
```
CID Image: bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q
```

**View on IPFS:**
```
https://gateway.pinata.cloud/ipfs/bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q
```

---

## Step 2: Create JSON Metadata

Create a file `metadata.json` locally:

```json
{
  "name": "The Void-Skipper #42",
  "description": "NFT Pass - Video Game Access",
  "image": "ipfs://bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q",
  "attributes": [
    {
      "trait_type": "Collection",
      "value": "TokenizeArt"
    }
  ]
}
```

**Replace the image CID with your own!**

---

## Step 3: Upload JSON to Pinata

1. Go back to [pinata.cloud](https://pinata.cloud)
2. Click "Upload" → Select `metadata.json`
3. **Copy the JSON CID**

**Example:**
```
CID JSON: bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq
```

**Final URI:**
```
ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq
```

---

## Step 4: Deploy Contract with Metadata URI

Use this URI when deploying the contract on Remix:

```
ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq
```

This becomes the `_baseTokenURI` for all 42 NFTs.

---

## Step 5: Use safeMint() Function

### Option A: Using Remix IDE

1. Go to [Remix IDE](https://remix.ethereum.org)
2. Deploy your contract (TokenizeArt or TokenizeArtOnChain)
3. In the "Deployed Contracts" section, expand your contract
4. Find the `safeMint()` function
5. Enter the recipient address (or your own wallet address)
6. Click the `safeMint` button to mint an NFT


### Option B: Using the Web Interface (Bonus GUI)

The TokenizeArt project includes an interactive web interface for minting NFTs without needing Remix:

#### Features:
- **Wallet Connection** - Connect your MetaMask wallet securely
- **Smart Contract Selection** - Switch between TokenizeArt and TokenizeArtOnChain contracts
- **Supply Display** - Real-time view of current supply vs max supply (42 NFTs)
- **Role Detection** - Automatically identifies if you're the contract owner
- **Easy Minting** - Mint NFTs directly from the interface with one click
- **Custom Recipient** - Specify a recipient address or mint to yourself

#### How to Use the GUI:

1. Open `code/index.html` in your browser (or run `python3 -m http.server 8080` and visit `http://localhost:8080/code/`)
2. Click **"Connect Wallet"** to connect your MetaMask wallet
3. Confirm you're connected - your wallet address will be displayed
4. Select the smart contract from the dropdown menu
5. If you're the contract owner, the **"Mint NFT"** button will be enabled
6. (Optional) Enter a recipient address or leave empty to mint to yourself
7. Click **"Mint NFT"** and confirm the transaction in MetaMask
