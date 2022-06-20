
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC721.sol";

// this NFT contract only 10000 items can be minted
contract DogsNft is ERC721 {
    
 
    
    uint256 public constant MAX_DOGS = 10000; // i used the constant keyword here for gas optimization
    
    uint256 public totalSupply;

    constructor() ERC721("DogInu","DGI") {
       totalSupply =0;

    }

    // minimal code for gas optimization
    function mint() public  {
        require(totalSupply + 1 < MAX_DOGS, "All Dogs have already been minted!");
        
        _mint(msg.sender, totalSupply + 1);
        
        totalSupply += 1;
    }

 // minimal code for the transfer function for gas optimization
  function transfer(address to_,uint256 tokenId_) public {
     safeTransferFrom(msg.sender,to_,tokenId_);
  }


    function _burn(uint256 tokenId) internal override(ERC721) {
        super._burn(tokenId);
    }

 
}