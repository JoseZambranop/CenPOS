//
//  Transaction.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

struct Transaction: Codable {
    public let transactionType: String?
    let referenceNumber: String?
    let merchantId: Int?
    let userId: String?
    let paymentType: String?
    let invoice: Invoice?
    let customer: Customer?
    let card: Card?
    let context: Context?
    let status: Status?

    enum CodingKeys: String, CodingKey {
        case transactionType = "transactionType"
        case referenceNumber = "referenceNumber"
        case merchantId = "merchantId"
        case userId = "userId"
        case paymentType = "paymentType"
        case invoice = "invoice"
        case customer = "customer"
        case card = "card"
        case context = "context"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        transactionType = try values.decodeIfPresent(String.self, forKey: .transactionType)
        referenceNumber = try values.decodeIfPresent(String.self, forKey: .referenceNumber)
        merchantId = try values.decodeIfPresent(Int.self, forKey: .merchantId)
        userId = try values.decodeIfPresent(String.self, forKey: .userId)
        paymentType = try values.decodeIfPresent(String.self, forKey: .paymentType)
        invoice = try values.decodeIfPresent(Invoice.self, forKey: .invoice)
        customer = try values.decodeIfPresent(Customer.self, forKey: .customer)
        card = try values.decodeIfPresent(Card.self, forKey: .card)
        context = try values.decodeIfPresent(Context.self, forKey: .context)
        status = try values.decodeIfPresent(Status.self, forKey: .status)
    }

}
