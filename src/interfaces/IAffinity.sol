// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "openzeppelin-contracts/contracts/utils/introspection/ERC165.sol";
import {ZoraCreator1155Impl} from "zora-protocol/src/nft/ZoraCreator1155Impl.sol";

abstract contract IAffinity is ERC165 {
    error TokenIdNonExistent();

    function showLove() public virtual;
    function showLove(address _recipient) public virtual;
    function showLove(uint256 _amount, address _recipient) public virtual;
    function showLove(uint256 _amount, address _recipient, uint256 tokenId) public virtual;
}