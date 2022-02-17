//answer: 0x436f76657274207468697320737472696e6720696e746f206279746573333200
const { ethers } = require("ethers");

var text = "Covert this string into bytes32";

console.log(ethers.utils.formatBytes32String( text ));