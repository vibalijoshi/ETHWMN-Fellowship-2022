# Week -2 Overview

This week was when I learnt about smart contracts the single biggest factor which differentiates Ethereum from other blockchains. Smart Contract is basically Solidity code which can interact with the Ethereum Blockchain. How to use the Remix IDE which can compile and deploy contracts easily, writing javascript scripts to deploy the contract, creating tokens, and desiging a contract by our own.


## Module - 1 Introduction To Remix and Solidity
Remix is a web based Solidity compiler. In this module we just had to deploy a contract in the JSVM enviroment. The JsVM is a private blockchain. The JsVM is its own blockchain and on each reload it will start a new blockchain, the old one will not be saved.
![image](https://user-images.githubusercontent.com/69690510/154492375-d8703053-a782-4c42-a48b-c9052438e7e5.png)

In this module we just had to follow the learnth plugin and deploy out contract. Also we had to fiddle with the contract given by default in the file explorer and change it's address. 
Also as contracts are basically solidity code, it was advised that we go through the [Crypto Zombie Solidity Tutorial](https://cryptozombies.io/). I believe after following this tutorial, anyone can pick up soidity quite fast (provided you have prior experience with C++ or Javascript like languages).
I would suggest to go through at least the first two modules as the knowledge required to code a contract is explained beautifully. 

Notes:
1. [Range of the uint256](https://ethereum.stackexchange.com/questions/29946/what-is-uint256)

## Module -2 Exploring Remix
Remix IDE proviedes web based Solidity compiler. You can also compile solidity code locally after installing the required environment, but for learning purpose Remix makes it a lot easier.
Also we were required to write tests for the default contract present in the IDE. Testing a contract before deployment is very important as it cannot be changed. The deployment transaction requires gas, hence we need to be careful about the resources. Hence, testing is an integral part of contract development.
![Module_3](https://user-images.githubusercontent.com/69690510/154495822-e919a397-ef55-4a7d-9798-c13afa67bbd7.png)

You can find the unit tests [here](https://github.com/vibalijoshi/ETHWMN-Fellowship-2022/blob/main/Week_2/Module_2/1_Storage_test.sol)

Suggested Links:
1. [Solidity Testing With Truffle](https://www.youtube.com/watch?v=b2VInFwZmNw). I did not use Truffle for testing, but you can get an idea about unit testing.
2. [Testing by Example, Remix IDE](https://remix-ide.readthedocs.io/en/latest/unittesting_examples.html)





## Further Goals
1. Try the local Smart Contract Environment/ not using Remix 
2. Trying the Truffle, Hardhat. Type script or javascript. 
