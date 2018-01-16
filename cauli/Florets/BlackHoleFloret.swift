//
//  BlackHoleFloret.swift
//  cauli
//
//  Created by Pascal Stüdlein on 07.07.17.
//  Copyright © 2017 TBO Interactive GmbH & Co KG. All rights reserved.
//

import Foundation

/// Announces to handle all requests without modifing the request, data or response.
public class BlackHoleFloret: Floret {
    public init() {}
    
    public func request(for request: URLRequest) -> URLRequest? {
        return request
    }
    
    public func response(for request: URLRequest) -> URLResponse? {
        return nil
    }
    
    public func response(for response: URLResponse) -> URLResponse? {
        return response
    }
    
    public func data(for data: Data?, request: URLRequest) -> Data? {
        return data
    }
    
    public func error(for request: URLRequest) -> Error? {
        return nil
    }
    
    public func error(for error: Error, request: URLRequest) -> Error {
        return error
    }
}