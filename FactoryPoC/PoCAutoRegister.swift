//
//  PoCAutoRegister.swift
//  FactoryPoC
//
//  Created by Frank Solleveld on 20/06/2023.
//

import Foundation
import Factory

import ModuleP
import ModuleA
import ModuleB

extension Container: AutoRegistering {
    public func autoRegister() {
        accountLoader.register { AccountLoader() }
    }
}
