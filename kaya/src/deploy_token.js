let { Zilliqa } = require('zilliqa-js');
let fs = require('fs');
let argv = require('yargs').argv
let colors = require('colors');

let url = 'http://localhost:4200'
let zilliqa = new Zilliqa({
  nodeUrl: url
});


let privateKey, address;

if(argv.key){
  privateKey = argv.key;
  console.log(`your private Key : ${privateKey}`);
} else {
  console.log('private is requiresd')
  process.exit(0)
}



address = zilliqa.util.getAddressFromPrivateKey(privateKey);

let node = zilliqa.getNode();
console.log(`Address: ${address}`)


function callback(err, data) {
  if( err || data.error ){
    console.log('error');
  } else {
    console.log(data);
  }
}




console.log('connected')


var code = fs.readFileSync('contracts/GaudiyToken.scilla', 'utf-8')

let initParams = [
  {
    'vname': 'owner',
    'type': 'Address',
    'value': `0x${address}`,
  },
  {
    'vname': '_creation_block',
    'type': 'BNum',
    'value': '1'
  },
];


let txnDetails = {
  version: 0,
  nonce: 1,
  to: '0000000000000000000000000000000000000000',
  amount: 0,
  gasPrice: 1,
  gasLimit: 50,
  code: code,
  data: JSON.stringify(initParams).replace(/\\"g, '"')
};


console.log(initParams);

let txn = zilliqa.util.createTransactionJson(privateKey, txnDetails);

node.createTransaction(txn, callback);



