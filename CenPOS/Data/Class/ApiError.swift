//
//  ApiError.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct ApiError: Codable {

    public var code: String?
    public var message: String?
    public var target: String?
    public var details: String?

    public init(
        code: String? = nil,
        message: String? = nil,
        target: String? = nil,
        details: String? = nil
    ) {
        self.code = code
        self.message = message
        self.target = target
        self.details = details
    }
}
