/// <reference types="node" />
import { TxDetails } from './types';
/**
 * generatePrivateKey
 *
 * @returns {string} - the hex-encoded private key
 */
export declare const generatePrivateKey: () => string;
/**
 * getAddressFromPrivateKey
 *
 * takes a hex-encoded string (private key) and returns its corresponding
 * 20-byte hex-encoded address.
 *
 * @param {string} Key
 * @returns {string}
 */
export declare const getAddressFromPrivateKey: (privateKey: string) => string;
/**
 * getPubKeyFromPrivateKey
 *
 * takes a hex-encoded string (private key) and returns its corresponding
 * hex-encoded 33-byte public key.
 *
 * @param {string} privateKey
 * @returns {string}
 */
export declare const getPubKeyFromPrivateKey: (privateKey: string) => string;
/**
 * compressPublicKey
 *
 * @param {string} publicKey - 65-byte public key, a point (x, y)
 *
 * @returns {string}
 */
export declare const compressPublicKey: (publicKey: string) => string;
/**
 * getAddressFromPublicKey
 *
 * takes hex-encoded string and returns the corresponding address
 *
 * @param {string} pubKey
 * @returns {string}
 */
export declare const getAddressFromPublicKey: (pubKey: string) => string;
/**
 * verifyPrivateKey
 *
 * @param {string|Buffer} privateKey
 * @returns {boolean}
 */
export declare const verifyPrivateKey: (privateKey: string) => boolean;
/**
 * encodeTransaction
 *
 * @param {any} txn
 * @returns {Buffer}
 */
export declare const encodeTransaction: (txn: TxDetails) => Buffer;
/**
 * createTransactionJson
 *
 * @param {string} privateKey
 * @param {TxDetails} txnDetails
 * @param {TxDetails}
 *
 * @returns {TxDetails}
 */
export declare const createTransactionJson: (privateKey: string, txnDetails: TxDetails) => TxDetails;
interface ValidatorDictionary {
    [key: string]: Array<(...args: any[]) => any>;
}
export declare const validateArgs: (args: {
    [key: string]: any;
}, requiredArgs: ValidatorDictionary, optionalArgs?: ValidatorDictionary | undefined) => boolean;
export declare const isAddress: (address: string) => boolean;
export declare const isPrivateKey: (privateKey: string) => boolean;
export declare const isPubKey: (pubKey: string) => boolean;
export declare const isUrl: (url: any) => string;
export declare const isHash: (txHash: string) => boolean;
export declare const isNumber: (number: any) => boolean;
export declare const isString: (string: any) => boolean;
export declare const intToByteArray: (val: number, paddedSize: number) => string[];
export {};
