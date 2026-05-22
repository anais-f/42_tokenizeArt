// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Base64.sol";


contract Fish42OnChain is ERC721, Ownable {

    uint256 private _tokenId;
    uint256 public constant MAX_SUPPLY = 42;
    string private constant IMAGE_SVG = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400"><rect width="400" height="400" fill="#0a0a1a"/><text x="200" y="240" font-family="Arial" font-size="180" font-weight="bold" fill="white" text-anchor="middle">42</text></svg>';    



    constructor() ERC721("The #42", "FISH42CHN") Ownable(msg.sender) {
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
     * @dev Returns the json metadata URI for the specified token, encoding the SVG image and attributes in Base64.
     * @param tokenId The ID of the token for which to retrieve metadata.
     * @return The json metadata URI for the specified token.
     */
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);

        string memory imgEncoded = string.concat("data:image/svg+xml;base64,", Base64.encode(bytes(IMAGE_SVG)));
        
        string memory json = string.concat(
            '{"name":"The 42",',
            '"description":"NFT TokenizeArt 42 - fully on-chain",',
            '"image":"', imgEncoded, '",',
            '"attributes":[',
                '{"trait_type":"Artist","value":"anfichet"},',
                '{"trait_type":"Project","value":"TokenizeArt 42"}',
            ']}'
        );
    
        string memory jsonEncoded = string.concat("data:application/json;base64,", Base64.encode(bytes(json)));

        return jsonEncoded;
    }

    /**
     * @dev Returns the total supply of NFTs.
     * @return The total supply of NFTs.
     */
    function totalSupply() public view returns (uint256) {
        return _tokenId;
    }
}