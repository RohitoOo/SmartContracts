pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
   // Function that accepts Ether as input 
   
   
   mapping(address => uint256) public balances;
   address payable wallet; 
   
   constructor(address payable _wallet) public {
       wallet = _wallet;
   }
   
   
   function buyToken() public payable{
       // buy a token 
       
       // Increment token balance by 1 
       
        balances[msg.sender] += 1;
        
       // send ether to wallet 
       
        wallet.transfer(msg.value);

   }
}