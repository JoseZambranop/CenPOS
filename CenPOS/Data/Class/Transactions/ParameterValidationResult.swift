//
//  ParameterValidationResult.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct ParameterValidationResults: Codable {

    let name: String?
    let result: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case result = "result"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        result = try values.decodeIfPresent(String.self, forKey: .result)
    }

}
