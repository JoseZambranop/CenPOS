//
//  Context.swift
//  CenPOS
//
//  Created by Becerra Borges, Eduardo Yorman on 14/1/22.
//

import Foundation

struct Context: Codable {

    let origination: Int?
    let terminalCapabilities: String?

    enum CodingKeys: String, CodingKey {
        case origination = "origination"
        case terminalCapabilities = "terminalCapabilities"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        origination = try values.decodeIfPresent(Int.self, forKey: .origination)
        terminalCapabilities = try values.decodeIfPresent(String.self, forKey: .terminalCapabilities)
    }

}
