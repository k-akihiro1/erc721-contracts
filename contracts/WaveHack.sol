// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC721A} from "erc721a/contracts/ERC721A.sol";

contract WaveHack is ERC721A {
    constructor() ERC721A("WaveHack", "WAVE") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://aquamarine-bright-chinchilla-232.mypinata.cloud/ipfs/QmZM2BCFzLPtWF9CntYQuPv7VCrMYEMT8mGaYA15U7on6X/";
    }

    function tokenURI(uint256 tokenId) public pure override returns (string memory) {
        return string(abi.encodePacked(_baseURI(), _toString(tokenId), ".json"));
    }

    function mint(uint256 quantity) public {
        _mint(msg.sender, quantity);
    }
}
