//
//  Address.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct Address: Codable {

    public var streetAddress: String?
    // public var city: String?
    // public var state: String?
    public var zipCode: String?
    // public var country: Country?

    public init(
        streetAddress: String? = nil,
        // city: String? = nil,
        // state: String? = nil,
        zipCode: String? = nil
        // country: Country? = nil
    ) {
        self.streetAddress = streetAddress
        // self.city = city
       // self.state = state
        self.zipCode = zipCode
        // self.country = country
    }
}
