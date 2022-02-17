## What I learnt
1. What is the ERC20 token standard? [Article -1](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/), [Article -2](https://moralis.io/how-to-create-your-own-erc-20-token-in-10-minutes/)
2. What is the difference between a token and a contract? [Answer](https://bitcoin.stackexchange.com/questions/74240/token-vs-contract-are-they-the-same#:~:text=The%20Ethereum%20ERC20%20token%20is,is%20contract%20and%20not%20token%20.)
3. How to create a ERC20 token
    - [How To Create Your Own Ethereum Token In An Hour (ERC20 + Verified)](https://steemit.com/ethereum/@maxnachamkin/how-to-create-your-own-ethereum-token-in-an-hour-erc20-verified)
    - [Video - How to create ERC20 token](https://youtu.be/GDq7r1n9zIU)


## My thoughts
- I think ERC20 tokens are somewhat I feel like NFTs (Non Fungible Token) where you can get money in exchange for your art or something that you can offer as a token. 
    - Difference between NFTs and ERC20 tokens:
        -  A non-fungible token (also known as a “deed”). This is a token standard introduced by the ERC721 proposal. NFTs can be tracked and traded, but each token is unique and distinct; they are not interchangeable like ERC20 tokens. NFTs can represent ownership of digital or physical assets.
        - ERC20 is a standard for fungible tokens, meaning that different units of an ERC20 token are interchangeable and have no unique properties.
- If your contract has any of these functions then it would automatically make it a token, as it would behave like one. They are not predefined, you make them!

## Method
- Then I verified the smart contract. 
- My ERC20 contract deployed, the account address -> https://goerli.etherscan.io/address/0xbcd664f4131e0f0b2415a62ed40c164938011c67

## Uniswap pool
- My uniswap pool is loacted at [0x375DC3A167198eF6759D57f7C022f2BDed242F18](https://goerli.etherscan.io/address/0x375dc3a167198ef6759d57f7c022f2bded242f18#tokentxns)
- You can also access the uniswap pool account address from [here](https://goerli.etherscan.io/tx/0x4fbd0ef0aaed653a7510dcf0fd102311245fa25a17a0e7b5f51f9aff38ad0583)
- This transaction shows how I created the pool: https://goerli.etherscan.io/token/0xbcd664f4131e0f0b2415a62ed40c164938011c67?a=0x375dc3a167198ef6759d57f7c022f2bded242f18
- [Helpful video](https://youtu.be/XtwE6tpUVX0)