pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    string public value  ; 
    
    constructor() public {
        value = "myValue Default";
    }
    
    
    
    function get() public view returns(string memory) {
        return value;
    }    
    
    function set(string memory _values) public {
        value = _values;
    }
}


contract MyContract {
    string public  stringValue = 'myValueDefault'  ;
    bool public myBool = true; 
    int public myInt = 12;
    
    enum State {Waiting, Ready, Active}
    State public state; 
    
    constructor() public{
        state = State.Waiting;
    }
    
    function activate ()public {
        state = State.Active;
    }
    function DeActivate ()public {
        state = State.Waiting;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}


pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
   Person[] public people;
   
   // Internal count of people 
   // Using Array
   
   uint256 public peopleCount;
   
   struct Person {
       string _firstName;
       string _lastName;
   }
   
   function addPerson(string memory _firstName, string memory _lastName) public {
       people.push(Person(_firstName,_lastName));
       peopleCount += 1;
   }
}

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    
    // Using Mapping - Similar to Hash Table - Reference by Key Value Pair 

    uint256 public peopleCount;

    mapping(uint => Person) public people;
   
   // Internal count of people 
   
   
   struct Person {
       uint _id;
       string _firstName;
       string _lastName;
   }
   
   function addPerson(string memory _firstName, string memory _lastName) public {
       peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
   }
}

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    
    // Using Mapping - Similar to Hash Table - Reference by Key Value Pair 

    uint256 public peopleCount = 0;

    mapping(uint => Person) public people;
   
   struct Person {
       uint _id;
       string _firstName;
       string _lastName;
   }
   
   function addPerson(string memory _firstName, string memory _lastName) public {
       incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
   }
   
   function incrementCount() internal {
       peopleCount += 1;
   }
}

