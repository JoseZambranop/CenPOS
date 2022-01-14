//
//  AdditionalAmount.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

public struct AdditionalAmount: Codable {

    public enum AmountType: String, Codable {
        case tax = "Tax"
        case surcharge = "Surcharge"
        case discount = "Discount"
        case balance = "Balance"
        case donation = "Donation"
        case freight = "Freight"
        case duty = "Duty"
        case tip = "Tip"
        case phone = "Phone"
        case restaurant = "Restaurant"
        case miniBar = "MiniBar"
        case giftShop = "GiftShop"
        case laundry = "Laundry"
        case other = "Other"
        case roomTax = "RoomTax"
        case insurance = "Insurance"
        case fuel = "Fuel"
        case oneWayDropOff = "OneWayDropOff"
        case autoTowing = "AutoTowing"
        case regularMileage = "RegularMileage"
        case extraMileage = "ExtraMileage"
        case lateReturn = "LateReturn"
        case drivingViolation = "DrivingViolation"
        case parkingExpenses = "ParkingExpenses"
        case delivery = "Delivery"
        case telephone = "Telephone"
        case gps = "Gps"
    }

    public enum CodingKeys: String, CodingKey {
        case amountType
        case _description = "description"
        case amount
    }

    public var amountType: AmountType?
    public var _description: String?
    public var amount: Double?

    public init(
        amountType: AdditionalAmount.AmountType? = nil,
        _description: String? = nil,
        amount: Double? = nil
    ) {
        self.amountType = amountType
        self._description = _description
        self.amount = amount
    }
}
