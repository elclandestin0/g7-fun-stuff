// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VoxelMetadata {
    struct Voxel {
        string encryptedJSON;
        bytes32 decryptionKey;
        bool exists;
    }

    // Mapping for voxel metadata
    mapping(uint256 => Voxel) public voxelMetadata;

    // Event for when voxel metadata is updated
    event metadataUpdated(uint256 indexed tokenId);

    modifier metadataExists(uint256 tokenId) {
        require(voxelMetadata[tokenId].exists, "Voxel metadata does not exist");
        _;
    }

    function getVoxelMetadata(string memory encryptedJSON, bytes32 decryptionKey) public pure returns (Voxel memory) {
        Voxel memory voxel = Voxel(encryptedJSON, decryptionKey, true);
        return voxel;
    }

    function setVoxelMetadata(uint256 tokenId, string memory encryptedJSON, bytes32 decryptionKey) public {
        voxelMetadata[tokenId] = Voxel(encryptedJSON, decryptionKey, true);
        emit metadataUpdated(tokenId);
    }
    
    function updateVoxelMetadata(uint256 tokenId, string memory encryptedJSON, bytes32 decryptionKey) public {
        require(bytes(voxelMetadata[tokenId].encryptedJSON).length != 0, "Voxel metadata not set");
        voxelMetadata[tokenId] = Voxel(encryptedJSON, decryptionKey, true);
        emit metadataUpdated(tokenId);
    }
}