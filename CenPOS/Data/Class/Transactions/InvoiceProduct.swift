//
//  InvoiceProduct.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct InvoiceProduct: Codable {

    public enum UnitofMeasureCode: String, Codable {
        case unit = "Unit"
        case _case = "Case"
        case kilogram = "Kilogram"
        case liter = "Liter"
        case pound = "Pound"
        case quart = "Quart"
        case ounce = "Ounce"
        case other = "Other"
    }

    public var discountLineItem: Double?
    public var itemCommodityCode: String?
    public var itemDescription: String?
    public var lineItemTotal: Double?
    public var productCode: String?
    public var quantity: Double?
    public var unitCost: Double?
    public var unitofMeasureCode: UnitofMeasureCode?
    public var taxAmount: Double?

    public init(
        discountLineItem: Double? = nil,
        itemCommodityCode: String? = nil,
        itemDescription: String? = nil,
        lineItemTotal: Double? = nil,
        productCode: String? = nil,
        quantity: Double? = nil,
        unitCost: Double? = nil,
        unitofMeasureCode: InvoiceProduct.UnitofMeasureCode? = nil,
        taxAmount: Double? = nil
    ) {
        self.discountLineItem = discountLineItem
        self.itemCommodityCode = itemCommodityCode
        self.itemDescription = itemDescription
        self.lineItemTotal = lineItemTotal
        self.productCode = productCode
        self.quantity = quantity
        self.unitCost = unitCost
        self.unitofMeasureCode = unitofMeasureCode
        self.taxAmount = taxAmount
    }
}
