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

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
   // Function that accepts Ether as input 
   
   
   mapping(address => uint256) public balances;
   address payable wallet; 
   
   
   // indexed - subscribe only to a specific address 
   // view all purchase event from blocks of the blockchain in the smartcontract 
   
   event Purchase(
       address indexed _buyer,
       uint256 _amount
    );
   
   constructor(address payable _wallet) public {
       wallet = _wallet;
   }
   
//   function() public  payable {
//       buyToken();
//   }
   
   
   function buyToken() public payable{
       // buy a token 
       // Increment token balance by 1 
       
        balances[msg.sender] += 1;
        
       // send ether to wallet 
       
        wallet.transfer(msg.value);
        
        // Call Event - emit 
        
        emit Purchase(msg.sender, 1);

   }
}