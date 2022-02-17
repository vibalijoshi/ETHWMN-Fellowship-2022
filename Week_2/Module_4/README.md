## ERC20 Token
This particular section introduced me to the usecase of smart contracts in Ethereum. It was quite interesting to own a token currency! TL;DR ERC20 is just a smart contract that has a particular set of functions defined by the ERC20 Protocol. If your contract has any of these functions then it would automatically make it a token, as it would behave like one. They are not predefined, you make them!


1. What is the ERC20 token standard?
    - [ERC-20 TOKEN STANDARD](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/)
    - [How To Create Your Own Token](https://moralis.io/how-to-create-your-own-erc-20-token-in-10-minutes/), read the theory part. It is quite useful. 

2. How to create a ERC20 token
    - [How To Create Your Own Ethereum Token In An Hour (ERC20 + Verified)](https://steemit.com/ethereum/@maxnachamkin/how-to-create-your-own-ethereum-token-in-an-hour-erc20-verified)
    - [Video - How to create ERC20 token](https://youtu.be/GDq7r1n9zIU) </br>
_Creating my ERC20 token "Distribute Happiness" on the Remix IDE_
![Screenshot from 2022-02-16 19-08-11](https://user-images.githubusercontent.com/69690510/154498027-fd13985a-e818-4028-9200-cde8f7789e6c.png)

3. After creating my contract and deploying it, I verified the contract so that I could read and write it. My first ERC20 token is deployed [here](https://goerli.etherscan.io/address/0xbcd664f4131e0f0b2415a62ed40c164938011c67)!

- I was quite confused at this point about the difference between a token and a contract so decided to clear it out! [Answer](https://bitcoin.stackexchange.com/questions/74240/token-vs-contract-are-they-the-same#:~:text=The%20Ethereum%20ERC20%20token%20is,is%20contract%20and%20not%20token%20.)
- I think ERC20 tokens are somewhat I feel like NFTs (Non Fungible Token) where you can get money in exchange for your art or something that you can offer as a token. 
    - Difference between NFTs and ERC20 tokens:
        -  A non-fungible token (also known as a “deed”). This is a token standard introduced by the ERC721 proposal. NFTs can be tracked and traded, but each token is unique and distinct; they are not interchangeable like ERC20 tokens. NFTs can represent ownership of digital or physical assets.
        - ERC20 is a standard for fungible tokens, meaning that different units of an ERC20 token are interchangeable and have no unique properties.

## Uniswap pool
This was also very interesting, creating a liquidity pool. So basically what you do is set an exchange rate for the token that you have just created! I was unable to make pool using the v3 of [Uniswap](https://uniswap.org/) hence had to use the v2 version. 
![error](https://user-images.githubusercontent.com/69690510/154500010-1a713e5b-6b2d-4003-bc3e-7af7cfd54396.png)

There is some transaction cost associated with pool creation. [This transaction](https://goerli.etherscan.io/token/0xbcd664f4131e0f0b2415a62ed40c164938011c67?a=0x375dc3a167198ef6759d57f7c022f2bded242f18) shows how I created the pool . After your pool is created you will have a pool address. I could not find the pool address on the dashboard. I extracted it using React devtools. Later on observation, my pool address can be traced down in the transactions list [here](https://goerli.etherscan.io/tx/0x4fbd0ef0aaed653a7510dcf0fd102311245fa25a17a0e7b5f51f9aff38ad0583). My uniswap pool is loacted at [0x375DC3A167198eF6759D57f7C022f2BDed242F18](https://goerli.etherscan.io/address/0x375dc3a167198ef6759d57f7c022f2bded242f18#tokentxns) </br>
![findd](https://user-images.githubusercontent.com/69690510/154501373-51168f35-a69e-4b76-93e2-f92ae643d224.png)



### Notes: 
- [Helpful video](https://youtu.be/XtwE6tpUVX0)
