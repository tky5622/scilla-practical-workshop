const {Transaction} = require('@zilliqa-js/account');
const {BN} = require('@zilliqa-js/util');
const {Zilliqa} = require('@zilliqa-js/zilliqa');
const fs = require('fs');

const zilliqa = new Zilliqa('https://api-scilla.zilliqa.com/');

// Populate the wallet with an account
const address = zilliqa.wallet.addByPrivateKey(
    '3375F915F3F9AE35E6B301B7670F53AD1A5BE15D8221EC7FD5E503F21D3450C8',
);

console.log(address);

async function testBlockchain() {
    try {
        // Send a transaction to the network
        // const tx = await zilliqa.blockchain.createTransaction(
        //     zilliqa.transactions.new({
        //         version: 1,
        //         toAddr: 'affc3236b726660ed9b99dff11451e4e8c107dea',
        //         amount: new BN(888),
        //         gasPrice: new BN(1),
        //         gasLimit: new BN(10),
        //     }),
        // );
        // console.log(tx);

        // Deploy a contract
        //deplou other caller contract

        // Deploy a contract
        const caller_code = fs.readFileSync('contract/HelloMulMes.scilla', 'utf-8');

        const caller_init = [
            {
                vname: 'owner',
                type: 'ByStr20',
                value: '0x8254b2c9acdf181d5d6796d63320fbb20d4edd12',
            },
        ];

        // instance of class Contract
        const caller_contract = zilliqa.contracts.new(caller_code, caller_init);
        const caller_hello = await caller_contract.deploy(new BN(1), new BN(2500));
        console.log(caller_hello, 'caller hello')

        const callTx = await caller_hello.call('getHello', [
        ]);


        //
        // const callTx = await caller_hello.call('setHello', [
        //     {
        //         vname: 'msg',
        //         type: 'String',
        //         value: 'Hello World',
        //     },
        // ]);
        console.log(callTx, 'callTx')
        console.log(callTx.receipt.event_logs)
        console.log(callTx.provider.HTTPProvider.middleware.response, 'response')
        const state = await caller_hello.getState();
        console.log(state, 'caller state');

    } catch (err) {
        console.log(err);
    }
}

testBlockchain();
