// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VoxelMetadata {
    struct Voxel {
        string encryptedJSON;
        bytes32 decryptionKey;
    }

    // Mapping for voxel metadata
    mapping(uint256 => VoxelMetadata) public voxelMetadata;

    // Event for when voxel metadata is updated
    event metadataUpdated(uint256 indexed tokenId);

    function getVoxelMetadata(uint256 tokenId) public view returns (VoxelMetadata) {
        return voxelMetadata[tokenId];
    }
}
