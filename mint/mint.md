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

