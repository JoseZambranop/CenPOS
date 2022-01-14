//
//  User.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation

public struct User: Codable {

    public var alertEmailList: [String]?
    public var department: String?
    public var email: String?
    public var invoiceOption: Int?
    public var isLockedOut: Bool?
    public var name: String?
    public var password: String?
    public var receiptType: Int?
    public var userId: String?
    public var hierarchyRoleId: Int?
    public var cellPhoneNumber: String?
    public var processingUserType: String?
    public var configurationXml: String?

    public init(
        alertEmailList: [String]? = nil,
        department: String? = nil,
        email: String? = nil,
        invoiceOption: Int? = nil,
        isLockedOut: Bool? = nil,
        name: String? = nil,
        password: String? = nil,
        receiptType: Int? = nil,
        userId: String? = nil,
        hierarchyRoleId: Int? = nil,
        cellPhoneNumber: String? = nil,
        processingUserType: String? = nil,
        configurationXml: String? = nil
    ) {
        self.alertEmailList = alertEmailList
        self.department = department
        self.email = email
        self.invoiceOption = invoiceOption
        self.isLockedOut = isLockedOut
        self.name = name
        self.password = password
        self.receiptType = receiptType
        self.userId = userId
        self.hierarchyRoleId = hierarchyRoleId
        self.cellPhoneNumber = cellPhoneNumber
        self.processingUserType = processingUserType
        self.configurationXml = configurationXml
    }
}
