//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.x;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage
{
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIDs;

    constructor() ERC721("First NFT","FNFT") 
    {

    }

    function mintNFT(address recipient, string memory tokenURI) public returns(uint256)
    {
        _tokenIDs.increment();
        uint256 newItemID = _tokenIDs.current();
        require(newItemID<=3000,"Maximum minting limit is 3000");
        _mint(recipient, newItemID);
        _setTokenURI(newItemID, tokenURI);

        return newItemID;
    }

    function changeNFTImage(string memory tokenURI, uint tokenID) public 
    {
        uint256 newItemID = tokenID;
        _setTokenURI(newItemID, tokenURI);
    }
}
