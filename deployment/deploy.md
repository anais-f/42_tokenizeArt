# Deployment Guide - The Void-Skipper #42

## Project Overview

**TokenizeArt** is a collection of **42 unique NFTs** serving as exclusive access passes to a video game.

- **Contract Name:** Fish42
- **Token Standard:** ERC721
- **Maximum Supply:** 42 NFTs
- **Network:** Ethereum Sepolia Testnet

---

## Prerequisites

- IPFS metadata URI (ex: `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq`)
- MetaMask connected to **Sepolia Testnet**
- Testnet ETH (free from [faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia))
- Solidity contract code from `code/TokenizeArt.sol`

---

## Method 1: Initial Deployment on Remix IDE

### Step 1: Deploy on Remix

1. Go to [remix.ethereum.org](https://remix.ethereum.org)
2. Create a new file named `Fish42.sol`
3. Copy the contract code from `code/TokenizeArt.sol`
4. **Compile** the contract (Ctrl+Shift+S or Cmd+Shift+S)
5. Go to the **Deploy tab** on the left sidebar
6. **Network Selection:**
   - Ensure MetaMask is connected to Sepolia Testnet
   - Remix should automatically detect it
7. **Constructor Parameter:**
   - In the contract deployment section, enter the IPFS baseURI
   - Example: `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq`
8. Click **"Deploy"** → Confirm transaction in MetaMask

**Result:** Your contract is now deployed on Sepolia Testnet!

---

### Step 2: Mint NFTs

Once deployed, mint NFTs to addresses:

1. In Remix left panel, expand the deployed contract
2. Locate the `safeMint()` function
3. Enter the **recipient wallet address** (can be your own or another address)
4. Click **"transact"**
5. Confirm the transaction in MetaMask
6. **Wait for confirmation**, then repeat for each NFT
7. **Maximum:** 42 NFTs can be minted (contract limit)

---

### Step 3: Verify on Etherscan

1. Copy the **contract address** from Remix deployment logs
2. Go to [Etherscan Sepolia](https://sepolia.etherscan.io/)
3. Paste the contract address in the search bar
4. **Verify:**
   - Contract code is visible under the "Code" tab
   - Mint transactions appear in "Transactions"
   - `totalSupply()` matches the number of mints

---

## Method 2: Interacting with Existing Sepolia Contract

If a contract is already deployed on Sepolia, you can interact with it:

1. Go to [Etherscan Sepolia](https://sepolia.etherscan.io/)
2. Paste the contract address: `0xCd613D6b6CeF6e0BcD8EBA3207B0acA49e5c1Db9`
3. Navigate to the **"Contract"** tab
4. Click **"Write"** or **"Write as Proxy"** 
5. Click "Connect to Web3" and select MetaMask
6. Find `safeMint(address to)` function
7. Enter the recipient address
8. Click **"Write"** → Confirm in MetaMask

---

## Mandatory Deployment Addresses (Sepolia Testnet)

| Item | Value |
|------|-------|
| **Contract Address** | `0xCd613D6b6CeF6e0BcD8EBA3207B0acA49e5c1Db9` |
| **Creator Wallet** | `0xAE9d88Fbd66e345F0e65e95891bA88A940bA0FE0` |
| **Etherscan Link** | [https://sepolia.etherscan.io/address/0xcd613d6b6cef6e0bcd8eba3207b0aca49e5c1db9](https://sepolia.etherscan.io/address/0xcd613d6b6cef6e0bcd8eba3207b0aca49e5c1db9) |
| **Metadata URI** | `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq` |
| **Deployment Tx Hash** | [0xe40d678e465ed2d3e3f9d839e03676b0bb8264c425e30fdf70f6d9f448a17d6c](https://sepolia.etherscan.io/tx/0xe40d678e465ed2d3e3f9d839e03676b0bb8264c425e30fdf70f6d9f448a17d6c) |
| **Image CID (IPFS)** | `bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q` |

---

## Bonus Deployment Addresses (Sepolia Testnet)

| Item | Value |
|------|-------|
| **Contract Address** | `0xF241204E292083D614496F0aA791afB85d1809E3` |
| **Creator Wallet** | `0xAE9d88Fbd66e345F0e65e95891bA88A940bA0FE0` |
| **Etherscan Link** | [https://sepolia.etherscan.io/address/0xf241204e292083d614496f0aa791afb85d1809e3](https://sepolia.etherscan.io/address/0xf241204e292083d614496f0aa791afb85d1809e3) |
| **Deployment Tx Hash** | [https://sepolia.etherscan.io/tx/0x186d74ffc0b0eed952043d0dccb910844def3dd9321e9b37b45d57a191575975](https://sepolia.etherscan.io/tx/0x186d74ffc0b0eed952043d0dccb910844def3dd9321e9b37b45d57a191575975) |
