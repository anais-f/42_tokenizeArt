// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Fish42 is ERC721, Ownable {

    string private _baseTokenURI;
    uint256 private _tokenId;
    uint256 public constant MAX_SUPPLY = 42;

    constructor(string memory _baseURI) ERC721("The Void-Skipper #42", "FISH42") Ownable(msg.sender) {
        _baseTokenURI = _baseURI;
        _tokenId = 0;
    }

    /**
     * @dev Mints a new NFT to the specified address, ensuring the total supply does not exceed the maximum limit.
     * @param to The address to which the NFT will be minted.
     */
    function safeMint(address to) public onlyOwner {
        require(_tokenId < MAX_SUPPLY, "Max supply reached");
        _safeMint(to, _tokenId);
        _tokenId++;
    }

    /**
     * @dev Returns the URI of the metadata for a given token ID.
     * @param tokenId The ID of the token for which to retrieve metadata.
     * @return The URI of the metadata for the specified token.
     */
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);
        
        return _baseTokenURI;
    }

    /**
     * @dev Returns the total supply of NFTs.
     * @return The total supply of NFTs.
     */
    function totalSupply() public view returns (uint256) {
        return _tokenId;
    }
}