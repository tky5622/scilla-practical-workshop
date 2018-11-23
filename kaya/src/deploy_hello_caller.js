require('isomorphic-fetch');

const { Zilliqa } = require('zilliqa-js');
const BN = require('bn.js');

const fs = require('fs');
const argv = require('yargs').argv;
const colors = require('colors');

const url = 'http://localhost:4200';

const zilliqa = new Zilliqa({
    nodeUrl: url,
});

if (!argv.key) {
    console.log('Private key is required');
    process.exit(0);
}

const privateKey = argv.key;
const callerAddress = argv.address;
console.log(callerAddress)


const address = zilliqa.util.getAddressFromPrivateKey(privateKey);

const node = zilliqa.getNode();

console.log(address)
function callback(err, data) {
    if (err || data.error) {
        console.log('Error');
    } else {
        console.log(data);
    }
}

// Main Logic
console.log('Zilliqa Testing Script'.bold.cyan);
console.log(`Connected to ${url}`);

const code = fs.readFileSync('contract/HelloCaller.scilla', 'utf-8');


node.getBalance({ address }, (err, data) => {
    if (err || data.error) {
        console.log('Error');
    } else {
        const { nonce } = data.result;

        const newNonce = nonce + 1;

        const initParams = [
            {
                vname: 'callee_address',
                type: 'ByStr20',
                value: `0x${callerAddress}`,
            },
            {
                vname: '_creation_block',
                type: 'BNum',
                value: '2',
            },

        ];

// transaction details
        const txnDetails = {
            version: 0,
            nonce: newNonce,
            to: '0000000000000000000000000000000000000000',
            amount: new BN(10),
            gasPrice: 1,
            gasLimit: 2000,
            code: code,
            data: JSON.stringify(initParams).replace(/\\"/g, '"'),
        };

        // sign the transaction using util methods
        const txn = zilliqa.util.createTransactionJson(privateKey, txnDetails);
        console.log(txn);

        // send the transaction to the node
        // sign the transaction using util methods
// send the transaction to the node
        node.createTransaction(txn, callback);

    }
});


// "value": "0x1234567890123456789012345678901234567890"console.log(initParams);
