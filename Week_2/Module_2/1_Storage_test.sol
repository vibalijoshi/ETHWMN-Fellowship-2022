// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../contracts/1_Storage.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {
    Storage storageContract;
    uint setStorageContractVal;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        storageContract = new Storage();
    }

    function checkSuccess_1() public {
        setStorageContractVal = 23;
        storageContract.store(setStorageContractVal);
        uint receivedStorageContractVal = storageContract.retrieve();
        Assert.ok(setStorageContractVal == receivedStorageContractVal, "test passed");
    }

    function checkSuccess_2() public {
        setStorageContractVal = 8625328;
        storageContract.store(setStorageContractVal);
        uint receivedStorageContractVal = storageContract.retrieve();
        Assert.ok(setStorageContractVal == receivedStorageContractVal, "test passed");
    }
    function checkSuccess_3() public {
        setStorageContractVal = 759259729232339794;
        storageContract.store(setStorageContractVal);
        uint receivedStorageContractVal = storageContract.retrieve();
        Assert.ok(setStorageContractVal == receivedStorageContractVal, "test passed");
    }
    
    function checkFailure() public {
        setStorageContractVal = 0;
        storageContract.store(setStorageContractVal);
        uint receivedStorageContractVal = storageContract.retrieve();
        Assert.equal(setStorageContractVal,receivedStorageContractVal, "test failed, value retrieved not same");
    }

}
    