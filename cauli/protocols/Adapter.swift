//
//  Adapter.swift
//  cauli
//
//  Created by Pascal Stüdlein on 07.07.17.
//  Copyright © 2017 TBO Interactive GmbH & Co KG. All rights reserved.
//

import Foundation

/// An Adapter intercepts the NetworkTraffic.
/// It passes the data to an Cauli instance.
public protocol Adapter {
    
    /// A reference to the cauli object to store for passing network traffic later on. This will be set by cauli when creating it with an adapter. This property should be weak, because cauli has a strong reference to the adapter.
    var cauli: Cauli? { get set }
    
    /// Returns if the adapter is currently enabled.
    /// When instantiating a new `Adapter` it should always be disabled.
    var isEnabled: Bool { get }
    
    /// Enables the adapter
    func enable()
    
    /// Disables the adapter. When an adapter disabled, it should behave as if it is not instantiated at all.
    /// Especially it should not have any impact on any network request or its performance.
    func disable()
}

internal protocol URLProtocolAdapter: Adapter {
    
    func canInit(_ request: URLRequest) -> Bool;
    
    func startLoading(_ request: URLRequest, urlProtocol: CauliURLProtocol) -> URLSessionDataTask;
    
}
