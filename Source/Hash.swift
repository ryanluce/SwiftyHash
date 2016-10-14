//
//  Hash.swift
//  SwiftyHash
//
//  Created by 刘栋 on 2016/10/13.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

/// Hash Object
public class Hash {
    
    private var data: Data
    
    public init(data: Data) {
        self.data = data
    }
    
    /// MD2 Message-Digest Algorithm    
    public var md2: String {
        return HashType.md2.string(&data)
    }
    
    /// MD4 Message-Digest Algorithm
    public var md4: String {
        return HashType.md4.string(&data)
    }
    
    /// MD5 Message-Digest Algorithm
    public var md5: String {
        return HashType.md5.string(&data)
    }
    
    /// SHA1 Secure Hash Algorithm
    public var sha1: String {
        return HashType.sha1.string(&data)
    }
    
    /// SHA224 Secure Hash Algorithm
    public var sha224: String {
        return HashType.sha224.string(&data)
    }
    
    /// SHA256 Secure Hash Algorithm
    public var sha256: String {
        return HashType.sha256.string(&data)
    }
    
    /// SHA384 Secure Hash Algorithm
    public var sha384: String {
        return HashType.sha384.string(&data)
    }
    
    /// SHA512 Secure Hash Algorithm
    public var sha512: String {
        return HashType.sha512.string(&data)
    }
}

extension Data {
    
    /// Hash Object, initiate by data itself
    public var sHash: Hash {
        return Hash(data: self)
    }
}

extension String {
    
    /// Hash Object, please encoding by utf8
    public var sHash: Hash {
        let hashData = data(using: String.Encoding.utf8) ?? Data()
        return Hash(data: hashData)
    }
}
