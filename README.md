# first smart contract
Smart contract allow enable the creation of the decentralised web also referred as 'web 3'. This allow to make app without the need of server or middlemen.

Smart contract are the backend of Dapp (decentralized app). Dapp are usally made of a frontend, writtent with html and css, and a backend (this is the database for your frontend).

This repositery show my first attempt at Dapp development.

Here is the address of my contract. You can look it up on the rospan ethereum network: 0x73e754ba8e98bb88cbf3271ae04c9a8b3d9e1aab

Other interesing link.

https://ropsten.etherscan.io/tx/0x6fa52978d6d2d2323529c7f5e4482994be5006ec65e74f14b2b3606395262551

https://ropsten.etherscan.io/tx/0x6fa52978d6d2d2323529c7f5e4482994be5006ec65e74f14b2b3606395262551

## source code
```sol
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
```

__You can also see the code [here](https://github.com/quantumporium/first_smart_contract/blob/main/first_smart_contract/metaCoin.sol)__
