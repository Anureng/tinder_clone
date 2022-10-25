// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Transaction is ERC721URIStorage {
    uint256 TINDER_TOKEN_ID;

    constructor() ERC721("CleverNFT", "CN") {}

    function mintNft(
        address _username,
        address _usertwo,
        string memory tokenuri
    ) {
        _mint(_username, TINDER_TOKEN_ID);
        _setTokenURI(TINDER_TOKEN_ID, tokenuri);
        TINDER_TOKEN_ID++;

        _mint(_usertwo, TINDER_TOKEN_ID);
        _setTokenURI(TINDER_TOKEN_ID, tokenuri);
        TINDER_TOKEN_ID++;
    }
}
