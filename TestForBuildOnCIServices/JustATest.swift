//
//  JustATest.swift
//  TestForBuildOnCIServices
//
//  Created by Natsuki Yamanaka on 2018/01/06.
//  Copyright © 2018年 Natsuki Yamanaka. All rights reserved.
//

import Foundation

class Model {
    func taxIncludedPrice(taxExcludedPrice: UInt) -> UInt {
        return taxExcludedPrice * 108 / 100
    }
    
    /// 文字列の末尾がpでなければpをつける
    func addSuffixP(name: inout String) -> Bool {
        if name.hasSuffix("p") {
            return false
        }
        name = name + "p"
        return true
    }
}
