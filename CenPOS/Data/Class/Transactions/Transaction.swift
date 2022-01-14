//
//  Transaction.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

public struct Transaction: Codable {

    public var transactionType: String
    public var referenceNumber: String?
    public var merchantId: Int?
    public var userId: String?
    public var paymentType: String?
    public var invoice: Invoice
    public var customer: Customer?
    public var card: Card?
    public var context: TransactionContext?
    public var status: TransactionStatus?

    public init(
        transactionType: String,
        referenceNumber: String? = nil,
        merchantId: Int? = nil,
        userId: String? = nil,
        paymentType: String? = nil,
        invoice: Invoice,
        customer: Customer? = nil,
        card: Card? = nil,
        context: TransactionContext? = nil,
        status: TransactionStatus? = nil
    ) {
        self.transactionType = transactionType
        self.referenceNumber = referenceNumber
        self.merchantId = merchantId
        self.userId = userId
        self.paymentType = paymentType
        self.invoice = invoice
        self.customer = customer
        self.card = card
        self.context = context
        self.status = status
    }
}
