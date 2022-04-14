// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {ERC721K} from "@ERC721K/ERC721K.sol";

contract ERC721KMinimal is ERC721K {
    constructor() ERC721K("ERC721K", "K") {}

    function mint(address to, uint256 amount) external payable {
        _mint(to, amount, "", false);
    }

    function tokenURI(uint256) public pure virtual override returns (string memory) {}
}
