// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";

contract FilmVaultToken is ERC20PresetMinterPauser, ERC20Capped {
    constructor () ERC20PresetMinterPauser("FilmVault", "FilmVault") ERC20Capped(1000000 * (10 ** uint256(9))) public {
        _setupDecimals(9);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20PresetMinterPauser, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
