import Znode from './node';
import * as util from './util';
interface Options {
    nodeUrl: string;
}
export default class Zilliqa {
    data: {
        [key: string]: any;
    };
    version: string;
    node: Znode;
    util: Partial<typeof util>;
    constructor(options: Options);
    getLibraryVersion: () => string;
    getNode: () => Znode;
    setNode: (options: Options) => null;
}
export {};
