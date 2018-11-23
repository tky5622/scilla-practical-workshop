declare type callback = (error: any, data: any) => any;
export default class ZNode {
    url: string;
    apiUrl: string;
    constructor(args: any);
    /**
     * isConnected
     *
     * returns network id
     *
     * @param {callback} cb
     */
    isConnected: (cb: callback) => void;
    /**
     * getNetworkId
     *
     * alias for isConnected
     *
     * @param {callback} cb
     */
    getNetworkId: (cb: callback) => void;
    getClientVersion: (cb: callback) => void;
    getProtocolVersion: (cb: callback) => void;
    createTransaction: (args: any, cb: any) => void;
    getTransaction: (args: any, cb: any) => void;
    getDsBlock: (args: any, cb: any) => void;
    getTxBlock: (args: any, cb: any) => void;
    getLatestDsBlock: (cb: any) => void;
    getLatestTxBlock: (cb: any) => void;
    getBalance: (args: any, cb: any) => void;
    getGasPrice: (cb: any) => void;
    getSmartContractState: (args: any, cb: any) => void;
    getSmartContractCode: (args: any, cb: any) => void;
    getSmartContractInit: (args: any, cb: any) => void;
    getSmartContracts: (args: any, cb: any) => void;
    getTransactionHistory: (args: any, cb: any) => void;
    getBlockTransactionCount: (args: any, cb: any) => void;
    getCode: (args: any, cb: any) => void;
    createMessage: (args: any, cb: any) => void;
    getGasEstimate: (args: any, cb: any) => void;
    getTransactionReceipt: (args: any, cb: any) => void;
    getHashrate: (cb: any) => void;
    isNodeMining: (args: any, cb: any) => void;
    compileCode: (args: any, cb: any) => void;
    checkCode: (args: any, cb: any) => void;
    checkCodeTest: (args: any, cb: any) => void;
    getBlockchainInfo: (args: any, cb: any) => void;
    getDSBlockListing: (args: any, cb: any) => void;
    getTxBlockListing: (args: any, cb: any) => void;
    getNumTxnsTxEpoch: (args: any, cb: any) => void;
    getNumTxnsDSEpoch: (args: any, cb: any) => void;
    getTransactionListing: (args: any, cb: any) => void;
}
export {};
