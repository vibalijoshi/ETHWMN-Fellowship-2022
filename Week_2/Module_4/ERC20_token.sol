/* Using the Remix IDE:

* Make a file with .sol extension
* After writing the contract compile it..make sure you have the same compiler as your solidity version.
* Under deploy and Run section, select injected web3
* It will then connect to your metamask account
* Make sure the contract listed is the name of your contract and not ERC20..something
* Deploy
*/


pragma solidity ^0.5.0;

// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
//
// ----------------------------------------------------------------------------
contract ERC20Interface {
    function totalSupply() public view returns (uint);
    function balanceOf(address tokenOwner) public view returns (uint balance);
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

// ----------------------------------------------------------------------------
// Safe Math Library
// ----------------------------------------------------------------------------
contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a); c = a - b; } function safeMul(uint a, uint b) public pure returns (uint c) { c = a * b; require(a == 0 || c / a == b); } function safeDiv(uint a, uint b) public pure returns (uint c) { require(b > 0);
        c = a / b;
    }
}


contract Happiness is ERC20Interface, SafeMath {
    string public name;
    string public symbol;
    uint8 public decimals; // 18 decimals is the strongly suggested default, avoid changing it

    uint256 public _totalSupply;

    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;

    /**
     * Constrctor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    constructor() public {
        name = "DistributingHappiness";
        symbol = "DSHPY";
        decimals = 18;
        _totalSupply = 100000000000000000000000000;

        balances[msg.sender] = _totalSupply;
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    function totalSupply() public view returns (uint) {
        return _totalSupply  - balances[address(0)];
    }

    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }

    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }

    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }

    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }

    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = safeSub(balances[from], tokens);
        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
}


/*
Output

On Etherscan - https://goerli.etherscan.io/tx/0x03d34fd35080008e62a30c3bd1148815512d47d2c1f1ed1ab883885d2f9f376e

Transferring token : https://goerli.etherscan.io/address/0x7B85313D1e5d46718B79724B4517809037ABb73D

status	true Transaction mined and execution succeed
transaction hash	0x03d34fd35080008e62a30c3bd1148815512d47d2c1f1ed1ab883885d2f9f376e
from	0x7B85313D1e5d46718B79724B4517809037ABb73D
to	Happiness.(constructor)
gas	974119 gas
transaction cost	974119 gas 
hash	0x03d34fd35080008e62a30c3bd1148815512d47d2c1f1ed1ab883885d2f9f376e
input	0x608...b0029
decoded input	{}
decoded output	 - 
logs	[
	{
		"from": "0xBCd664f4131e0f0B2415A62ED40c164938011C67",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x7B85313D1e5d46718B79724B4517809037ABb73D",
			"2": "100000000000000000000000000",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x7B85313D1e5d46718B79724B4517809037ABb73D",
			"tokens": "100000000000000000000000000"
		}
	}
]
val	0 wei






















*/