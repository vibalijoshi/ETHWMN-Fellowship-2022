const { ethers } = require("ethers");

var text = "Covert this string into bytes32";

console.log(ethers.utils.formatBytes32String( text ));