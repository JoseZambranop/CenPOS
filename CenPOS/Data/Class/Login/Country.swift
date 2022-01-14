//
//  Country.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct Country: Codable {

    public var name: String?
    public var code: String?

    public init(
        name: String? = nil,
        code: String? = nil
    ) {
        self.name = name
        self.code = code
    }
}
