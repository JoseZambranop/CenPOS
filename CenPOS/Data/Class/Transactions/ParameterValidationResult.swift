//
//  ParameterValidationResult.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct ParameterValidationResult: Codable {

    public var name: String?
    public var result: String?

    public init(
        name: String? = nil,
        result: String? = nil
    ) {
        self.name = name
        self.result = result
    }
}
