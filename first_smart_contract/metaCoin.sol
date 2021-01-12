pragma solidity ^0.4.15;

contract metaCoin {
    mapping (address => uint) balences;


    constructor() public {
        balences[msg.sender] = 10000;
    }

    function sendCoin(address receiver, uint ammount) public returns (bool sufficient) {
        if (balences[msg.sender] < ammount) return false;
        balences[msg.sender] -= ammount;
        balences[receiver] += ammount;
        return true;

    }

}