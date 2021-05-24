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

