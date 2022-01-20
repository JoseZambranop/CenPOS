//
//  Address.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct Address: Codable {

    let streetAddress: String?
    let zipCode: String?

    enum CodingKeys: String, CodingKey {
        case streetAddress = "streetAddress"
        case zipCode = "zipCode"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        streetAddress = try values.decodeIfPresent(String.self, forKey: .streetAddress)
        zipCode = try values.decodeIfPresent(String.self, forKey: .zipCode)
    }

}
