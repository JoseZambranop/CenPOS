//
//  Customer.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct Customer: Codable {

    let customerCode: String?
    let emailAddress: String?
    let address: Address?
    let name: String?

    enum CodingKeys: String, CodingKey {
        case customerCode = "customerCode"
        case emailAddress = "emailAddress"
        case address = "address"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        customerCode = try values.decodeIfPresent(String.self, forKey: .customerCode)
        emailAddress = try values.decodeIfPresent(String.self, forKey: .emailAddress)
        address = try values.decodeIfPresent(Address.self, forKey: .address)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
