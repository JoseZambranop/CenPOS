//
//  Customer.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct Customer: Codable {

    public var customerCode: String?
    public var emailAddress: String?
    // public var phone: String?
    public var address: Address?
    public var name: String?
    // public var birthday: String?
    // public var driversNumber: String?

    public init(
        customerCode: String? = nil,
        emailAddress: String? = nil,
        // phone: String? = nil,
        address: Address? = nil,
        name: String? = nil
        // birthday: String? = nil,
        // driversNumber: String? = nil
    ) {
        self.customerCode = customerCode
        self.emailAddress = emailAddress
        // self.phone = phone
        self.address = address
        self.name = name
        // self.birthday = birthday
        // self.driversNumber = driversNumber
    }
}
