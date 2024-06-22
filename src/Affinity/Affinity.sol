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

    function setUpToken(address _crateAddress, string memory _crateInfo, uint256 _maxSupply, address _adminAddress) public onlyOwner {
        require(_crateAddress != address(0), "No Zero address");
        uint256 newTokenId = ZoraCreator1155Impl(tokenAddress).setupNewTokenWithCreateReferral(_crateInfo, _maxSupply, _adminAddress);

        tokenIds[_crateAddress] = newTokenId;
        addresses[newTokenId] = _crateAddress;
    }

    function updateTokenUri(address _crateAddress, string memory _crateInfo) public onlyOwner {
        require(_crateAddress != address(0), "No Zero address");
        if (tokenIds[_crateAddress] == 0) revert TokenIdNonExistent();

        ZoraCreator1155Impl(tokenAddress).updateTokenURI(tokenIds[_crateAddress], _crateInfo);
    }
}