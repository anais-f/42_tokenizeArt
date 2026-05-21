# Documentation - NFTs & ERC721

## About TokenizeArt

**TokenizeArt** is a collection of 42 unique NFTs that serve as **access passes** to a video game.

Each NFT represents:
- **Proof of access** to the game
- **Ownership** recorded on the blockchain
- **Transferable asset** - can be sold or gifted
- **Immutable record** - permanent on Ethereum

The contract follows the **ERC721 standard**, which is the official standard for NFTs on Ethereum.

---

## ERC721 Standard

ERC721 is the **official standard** for NFTs on Ethereum, defined in [EIP-721](https://eips.ethereum.org/EIPS/eip-721).

### Main Functions

| Function | Purpose |
|----------|---------|
| `balanceOf(address owner)` | Number of NFTs owned |
| `ownerOf(uint256 tokenId)` | Owner of a token |
| `transferFrom(from, to, id)` | Transfer a token |
| `safeTransferFrom(from, to, id)` | Safely transfer a token (recommended) |
| `approve(to, tokenId)` | Authorize transfer of ONE token |
| `setApprovalForAll(operator, approved)` | Authorize transfer of ALL tokens |
| `getApproved(tokenId)` | Check who is approved for this token |
| `isApprovedForAll(owner, operator)` | Check if approved for all |

### Events

```solidity
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
```

### Key Concept: Approvals

To prevent unauthorized transfers, approvals are required:
1. **Owner** calls `approve(spender, tokenId)`
2. **Spender** can then call `transferFrom()` to transfer
3. This prevents unauthorized transfers

---

## ERC721Metadata Extension

Optional extension that adds metadata.

| Function | Purpose |
|----------|---------|
| `name()` | Collection name |
| `symbol()` | Ticker/symbol (ex: "FISH42") |
| `tokenURI(tokenId)` | URI pointing to JSON metadata (IPFS) |

### JSON Metadata Structure

```json
{
  "name": "The Void-Skipper #42",
  "description": "NFT Pass - Video Game Access",
  "image": "ipfs://QmXXXX...",
  "attributes": [
    {"trait_type": "Edition", "value": "1/42"}
  ]
}
```

---

## ERC165 - Interface Detection

Standard that allows contracts to declare which interfaces they implement.

| Function | Purpose |
|----------|---------|
| `supportsInterface(bytes4 interfaceID)` | Check if contract supports an interface |

Allows dapps to verify: "Is this really an ERC721?"

---

## OpenZeppelin - Secure Implementation

OpenZeppelin provides an audited implementation of ERC721 with helper functions.

| Function | Purpose |
|----------|---------|
| `_safeMint(to, tokenId)` | Create a token (secure) |
| `_mint(to, tokenId)` | Create a token (no verification) |
| `_requireOwned(tokenId)` | Verify token exists |

---

## TokenizeArt Contract - Architecture

### State Variables

| Variable | Purpose |
|----------|---------|
| `_baseTokenURI` | IPFS URI for metadata |
| `_nextTokenId` | Counter of created NFTs (0, 1, 2, ...) |
| `MAX_SUPPLY` | Limit: 42 tokens |

### Main Functions

| Function | Purpose |
|----------|---------|
| `safeMint(to)` | Create 1 NFT for `to` (max 42) |
| `tokenURI(tokenId)` | Return metadata URI |
| `totalSupply()` | Number of tokens created |

---

## Deployment Addresses

Once deployed on Sepolia Testnet:

| Item | Address |
|------|---------|
| Contract Address | `0xCd613D6b6CeF6e0BcD8EBA3207B0acA49e5c1Db9` |
| Creator Address | `0xAE9d88Fbd66e345F0e65e95891bA88A940bA0FE0` |

**View on Etherscan:** https://sepolia.etherscan.io/tx/0xe40d678e465ed2d3e3f9d839e03676b0bb8264c425e30fdf70f6d9f448a17d6c

---

## IPFS Resources

### Image CID

**CID:** `bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q`

- [View on Pinata Gateway](https://gateway.pinata.cloud/ipfs/bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q)
- [View on IPFS](ipfs://bafybeibbkezn6rxbq3xm2ravykgyop4o3orxyrfkkw2m2pti2v7glq4b3q)

### Metadata JSON CID

**CID:** `bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq`

**URI for Contract:** `ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq`

- [View on Pinata Gateway](https://gateway.pinata.cloud/ipfs/bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq)
- [View on IPFS](ipfs://bafkreig5og7bsgc6alvrpowpwz2ihvdcixfhyobgdmtntylpkspbqzozmq)



