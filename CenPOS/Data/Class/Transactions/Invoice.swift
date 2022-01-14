//
//  Invoice.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct Invoice: Codable {

    public var amount: Double?
    // public var refundedAmount: Double?
    public var originalAmount: Double?
    public var currencyCode: String?
    public var invoiceNumber: String?
    // public var purchaseOrderNumber: String?
    public var products: [InvoiceProduct]?
    public var additionalAmounts: [AdditionalAmount]?
   // public var carRental: CarRentalData?
   //  public var lodging: LodgingData?
  //  public var additionalInformation: [AdditionalInformationField]?
   //  public var footerNote: String?
   // public var taxVoucherNumber: String?
    // public var promoCode: String?

    public init(
        amount: Double? = nil,
        // refundedAmount: Double? = nil,
        originalAmount: Double? = nil,
        currencyCode: String? = nil,
        invoiceNumber: String? = nil,
        // purchaseOrderNumber: String? = nil,
        products: [InvoiceProduct]? = nil,
        additionalAmounts: [AdditionalAmount]? = nil
        // carRental: CarRentalData? = nil,
        // lodging: LodgingData? = nil,
        // additionalInformation: [AdditionalInformationField]? = nil,
        // footerNote: String? = nil,
        // taxVoucherNumber: String? = nil,
        // promoCode: String? = nil
    ) {
        self.amount = amount
        // self.refundedAmount = refundedAmount
        self.originalAmount = originalAmount
        self.currencyCode = currencyCode
        self.invoiceNumber = invoiceNumber
        // self.purchaseOrderNumber = purchaseOrderNumber
        self.products = products
        self.additionalAmounts = additionalAmounts
        // self.carRental = carRental
        // self.lodging = lodging
        // self.additionalInformation = additionalInformation
        // self.footerNote = footerNote
        // self.taxVoucherNumber = taxVoucherNumber
        // self.promoCode = promoCode
    }
}
