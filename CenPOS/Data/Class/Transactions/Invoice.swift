//
//  Invoice.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct Invoice: Codable {

    let amount: Double?
    let originalAmount: Double?
    let currencyCode: String?
    let invoiceNumber: String?
    let products: [String]?
    let additionalAmounts: [String]?

    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case originalAmount = "originalAmount"
        case currencyCode = "currencyCode"
        case invoiceNumber = "invoiceNumber"
        case products = "products"
        case additionalAmounts = "additionalAmounts"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Double.self, forKey: .amount)
        originalAmount = try values.decodeIfPresent(Double.self, forKey: .originalAmount)
        currencyCode = try values.decodeIfPresent(String.self, forKey: .currencyCode)
        invoiceNumber = try values.decodeIfPresent(String.self, forKey: .invoiceNumber)
        products = try values.decodeIfPresent([String].self, forKey: .products)
        additionalAmounts = try values.decodeIfPresent([String].self, forKey: .additionalAmounts)
    }

}
