// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.1.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.1.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.1.0/utils/Counters.sol";

contract Tinbox is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("tinbox", "tbx") {}

    function safeMint(address to) public onlyOwner {
        _safeMint(to, _tokenIdCounter.current());
        _tokenIdCounter.increment();
    }
}
