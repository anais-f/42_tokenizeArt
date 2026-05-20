# Deployment Guide

## Prerequisites

- IPFS metadata URI (ex: `ipfs://QmXXXX...`)
- MetaMask connected to **Sepolia Testnet**
- Testnet ETH (free from [faucet](https://sepoliafaucet.com))

---

## Step 1: Deploy on Remix

1. Go to [remix.ethereum.org](https://remix.ethereum.org)
2. Create new file → Copy contract code
3. Compile (Ctrl+Shift+S)
4. Go to Deploy tab
5. Select Sepolia network in MetaMask
6. Pass **baseURI IPFS** as constructor parameter
7. Click "Deploy" → Confirm on MetaMask

---

## Step 2: Mint 42 NFTs

1. In Remix, find `safeMint()` function
2. Pass your wallet address
3. Click "transact" × 42 times
4. Confirm each transaction

---

## Step 3: Verify

1. Copy contract address from deployment
2. Go to [Etherscan Sepolia](https://sepolia.etherscan.io/)
3. Paste contract address
4. Check mint transactions

---

## Deployment Addresses

| Item | Value |
|------|-------|
| Contract Address | `(To be filled)` |
| Creator Wallet | `(Your address)` |
| Etherscan Link | `https://sepolia.etherscan.io/address/...` |
| Metadata URI | `ipfs://...` |

