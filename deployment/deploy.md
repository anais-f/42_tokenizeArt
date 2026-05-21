# Deployment Guide

## Prerequisites

- IPFS metadata URI (ex: `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq`)
- MetaMask connected to **Sepolia Testnet**
- Testnet ETH (free from [faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia))

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
3. Click "transact"
4. Confirm the transaction

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
| Contract Address | `0xCd613D6b6CeF6e0BcD8EBA3207B0acA49e5c1Db9` |
| Creator Wallet | `0xAE9d88Fbd66e345F0e65e95891bA88A940bA0FE0` |
| Etherscan Link | `https://sepolia.etherscan.io/address/0xcd613d6b6cef6e0bcd8eba3207b0aca49e5c1db9` |
| Metadata URI | `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq` |
| Deployment tx address | `https://sepolia.etherscan.io/tx/0xe40d678e465ed2d3e3f9d839e03676b0bb8264c425e30fdf70f6d9f448a17d6c` |
