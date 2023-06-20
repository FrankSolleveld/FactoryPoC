//
//  Networking.swift
//
//
//  Created by Frank Solleveld on 20/06/2023.
//

import Foundation
import Factory

private enum LoaderError: Error {
    case mock
}

// Public Protocol
public protocol Networking {
    func load<T>() async throws -> T
}

// Public Factory
extension Container {
    public var network: Factory<Networking> { self { Network() } }
}

// Private Implementation
private class Network: Networking {
    public func load<T>() async throws -> T {
        throw LoaderError.mock
    }
}
