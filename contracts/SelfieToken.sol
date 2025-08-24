// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract SelfieToken is ERC721, Ownable {
    mapping(uint256 => string) private _tokenURIs;
    mapping(address => bytes32) public faceprints;
    constructor() ERC721("SelfieToken", "SELFIE") Ownable(0xYourWalletAddressFromPrivateKey) {}
    function mintSelfie(address to, uint256 tokenId, string memory ipfsUri, bytes32 faceprint) external onlyOwner {
        _safeMint(to, tokenId);
        _tokenURIs[tokenId] = ipfsUri;
        faceprints[to] = faceprint;
    }
    function login(address user, bytes32 faceprint) external view returns (bool) {
        return faceprints[user] == faceprint && balanceOf(user) > 0;
    }
}
