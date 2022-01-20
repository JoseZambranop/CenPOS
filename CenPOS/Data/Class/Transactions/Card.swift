//
//  Card.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct Card: Codable {

    let processAs: String?
    let authorizationNumber: String?
    let cardExpirationDate: String?
    let cardLastFourDigits: String?
    let cardType: String?
    let cardProduct: String?
    let prompts: [String]?
    let contactless: Bool?

    enum CodingKeys: String, CodingKey {
        case processAs = "processAs"
        case authorizationNumber = "authorizationNumber"
        case cardExpirationDate = "cardExpirationDate"
        case cardLastFourDigits = "cardLastFourDigits"
        case cardType = "cardType"
        case cardProduct = "cardProduct"
        case prompts = "prompts"
        case contactless = "contactless"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        processAs = try values.decodeIfPresent(String.self, forKey: .processAs)
        authorizationNumber = try values.decodeIfPresent(String.self, forKey: .authorizationNumber)
        cardExpirationDate = try values.decodeIfPresent(String.self, forKey: .cardExpirationDate)
        cardLastFourDigits = try values.decodeIfPresent(String.self, forKey: .cardLastFourDigits)
        cardType = try values.decodeIfPresent(String.self, forKey: .cardType)
        cardProduct = try values.decodeIfPresent(String.self, forKey: .cardProduct)
        prompts = try values.decodeIfPresent([String].self, forKey: .prompts)
        contactless = try values.decodeIfPresent(Bool.self, forKey: .contactless)
    }

}
