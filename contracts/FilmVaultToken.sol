// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/presets/ERC20PresetMinterPauser.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20Capped.sol";

contract FilmVaultToken is ERC20PresetMinterPauser, ERC20Capped {
    constructor (uint256 cap) ERC20PresetMinterPauser("FilmVault", "FilmVault") ERC20Capped(cap) {
        _setupDecimals(9);
        cap(1000000 * (10 ** uint256(decimals())));
        _mint(msg.sender, 9000 * (10 ** uint256(decimals())));
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20PresetMinterPauser, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
