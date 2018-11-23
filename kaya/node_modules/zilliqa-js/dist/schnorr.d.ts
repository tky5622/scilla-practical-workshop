/// <reference types="node" />
import BN from 'bn.js';
import Signature from 'elliptic/lib/elliptic/ec/signature';
/**
 * Hash (r | M).
 * @param {Buffer} msg
 * @param {BN} r
 *
 * @returns {Buffer}
 */
export declare const hash: (q: BN, pubkey: Buffer, msg: Buffer) => BN;
/**
 * sign
 *
 * @param {Buffer} msg
 * @param {Buffer} key
 * @param {Buffer} pubkey
 * @param {Buffer} pubNonce?
 *
 * @returns {Signature}
 */
export declare const sign: (msg: Buffer, key: Buffer, pubkey: Buffer, pubNonce?: Buffer | undefined) => Signature;
/**
 * trySign
 *
 * @param {Buffer} msg
 * @param {BN} prv - private key
 * @param {BN} k - DRBG-generated random number
 * @param {Buffer} pn - optional
 * @param {Buffer)} pubKey - public key
 *
 * @returns {Signature | null =>}
 */
export declare const trySign: (msg: Buffer, prv: BN, k: BN, pn: Buffer, pubKey: Buffer) => Signature | null;
/**
 * Verify signature.
 *
 * @param {Buffer} msg
 * @param {Buffer} signature
 * @param {Buffer} key
 *
 * @returns {boolean}
 *
 * 1. Check if r,s is in [1, ..., order-1]
 * 2. Compute Q = sG + r*kpub
 * 3. If Q = O (the neutral point), return 0;
 * 4. r' = H(Q, kpub, m)
 * 5. return r' == r
 */
export declare const verify: (msg: Buffer, signature: Signature, key: Buffer) => boolean;
/**
 * Schnorr personalization string.
 * @const {Buffer}
 */
export declare const alg: Buffer;
/**
 * Instantiate an HMAC-DRBG.
 *
 * @param {Buffer} msg
 * @param {Buffer} priv - used as entropy input
 * @param {Buffer} data - used as nonce
 *
 * @returns {DRBG}
 */
export declare const getDRBG: (msg: Buffer, priv: Buffer, data?: Buffer | undefined) => any;
/**
 * Generate pub+priv nonce pair.
 *
 * @param {Buffer} msg
 * @param {Buffer} priv
 * @param {Buffer} data
 *
 * @returns {Buffer}
 */
export declare const generateNoncePair: (msg: Buffer, priv: Buffer, data: Buffer) => Buffer;
