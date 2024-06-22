// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IAffinity} from "../interfaces/IAffinity.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";
import {ZoraCreator1155Impl} from "zora-protocol/src/nft/ZoraCreator1155Impl.sol";

contract Affinity is IAffinity, Ownable {
    mapping(uint256 => address) public addresses;

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
    }

    function showLove(uint256 _amount, address _recipient) public override {
        if (tokenIds[msg.sender] == 0) revert TokenIdNonExistent();
        uint256 tokenId = tokenIds[msg.sender];

        bytes memory emptyBytes;
        ZoraCreator1155Impl(tokenAddress).adminMint(_recipient, tokenId, _amount, emptyBytes);
    }

    function haveLove(address _crateAddress) public view override returns (address, uint256) {
        return (tokenAddress, tokenIds[_crateAddress]);
    }

    function assign(address _crateAddress, uint256 _tokenId) public onlyOwner {
        require(_crateAddress != address(0), "No Zero address");
        require(_tokenId > 0, "No Zero token ID");
        require(tokenIds[_crateAddress] == 0, "ID already assigned");
        require(addresses[_tokenId] == address(0), "ID already has address");

        tokenIds[_crateAddress] = _tokenId;
        addresses[_tokenId] = _crateAddress;
    }
}