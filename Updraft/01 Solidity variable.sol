// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStorage{
    bool HasFavoriteNumber = true;
    uint FavoriteNumber = 31;
    string FavoriteNumberInText = "Thirty One";
    int NegativeFavoriteNumber = -31;
    address MyWalletAddress = 0x70668c1223c4B9548D13bb63E76F0A99F2Cf7c70;
    bytes32 favoriteByte32 = "cat";
    bytes public defaultBytes;
}