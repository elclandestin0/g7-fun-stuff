// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VoxelMetadata.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VoxelNFT is ERC721, VoxelMetadata, Ownable {
    constructor() ERC721("VoxelNFT", "VXNFT") VoxelMetadata() Ownable(msg.sender) {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }

    function setVoxelMetadata(
        uint256 tokenId,
        string memory encryptedJSON,
        bytes32 decryptionKey
    ) public override {
        require(
            ownerOf(tokenId) == _msgSender(),
            "ERC721: caller is not owner"
        );
        super.setVoxelMetadata(tokenId, encryptedJSON, decryptionKey);
    }
}
