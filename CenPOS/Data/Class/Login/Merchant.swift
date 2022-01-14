//
//  Merchant.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation

public struct Merchant: Codable {

    public var address1: String?
    public var address2: String?
    public var city: String?
    public var state: String?
    public var zipCode: String?
    public var country: String?
    public var autoCloseBatch: Bool?
    public var autoCloseBatchHour: Int?
    public var autoCloseBatchMinute: Int?
    public var contactEmail: String?
    public var contactFirstName: String?
    public var contactLastName: String?
    public var defaultTax: Double?
    public var industry: String?
    public var invoiceOption: Int?
    public var lastSettlementDate: String?
    public var logo: String?
    public var maximumTax: Double?
    public var parameters: [Parameter]?
    public var minimumTax: Double?
    public var name: String?
    public var phone: String?
    public var recurringSaleCustomerCodeMode: String?
    public var sessionTimeout: Int?
    public var ticketDeliveryMethod: String?
    public var useInvoiceDetail: Bool?
    public var invoiceFooter: String?
    public var listMerchantInvoiceTemplate: [MerchantInvoiceTemplate]?
    public var useForceManagement: Bool?
    public var blockedCountryList: [Country]?
    public var additionalInformationConfiguration: String?
    public var level3Template: String?
    public var authorizationExpirationDays: Int?
    public var merchantParameterExceptions: [MerchantParameterException]?

    public init(
        address1: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        state: String? = nil,
        zipCode: String? = nil,
        country: String? = nil,
        autoCloseBatch: Bool? = nil,
        autoCloseBatchHour: Int? = nil,
        autoCloseBatchMinute: Int? = nil,
        contactEmail: String? = nil,
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        defaultTax: Double? = nil,
        industry: String? = nil,
        invoiceOption: Int? = nil,
        lastSettlementDate: String? = nil,
        logo: String? = nil,
        maximumTax: Double? = nil,
        parameters: [Parameter]? = nil,
        minimumTax: Double? = nil,
        name: String? = nil,
        phone: String? = nil,
        recurringSaleCustomerCodeMode: String? = nil,
        sessionTimeout: Int? = nil,
        ticketDeliveryMethod: String? = nil,
        useInvoiceDetail: Bool? = nil,
        invoiceFooter: String? = nil,
        listMerchantInvoiceTemplate: [MerchantInvoiceTemplate]? = nil,
        useForceManagement: Bool? = nil,
        blockedCountryList: [Country]? = nil,
        additionalInformationConfiguration: String? = nil,
        level3Template: String? = nil,
        authorizationExpirationDays: Int? = nil,
        merchantParameterExceptions: [MerchantParameterException]? = nil
    ) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.country = country
        self.autoCloseBatch = autoCloseBatch
        self.autoCloseBatchHour = autoCloseBatchHour
        self.autoCloseBatchMinute = autoCloseBatchMinute
        self.contactEmail = contactEmail
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.defaultTax = defaultTax
        self.industry = industry
        self.invoiceOption = invoiceOption
        self.lastSettlementDate = lastSettlementDate
        self.logo = logo
        self.maximumTax = maximumTax
        self.parameters = parameters
        self.minimumTax = minimumTax
        self.name = name
        self.phone = phone
        self.recurringSaleCustomerCodeMode = recurringSaleCustomerCodeMode
        self.sessionTimeout = sessionTimeout
        self.ticketDeliveryMethod = ticketDeliveryMethod
        self.useInvoiceDetail = useInvoiceDetail
        self.invoiceFooter = invoiceFooter
        self.listMerchantInvoiceTemplate = listMerchantInvoiceTemplate
        self.useForceManagement = useForceManagement
        self.blockedCountryList = blockedCountryList
        self.additionalInformationConfiguration = additionalInformationConfiguration
        self.level3Template = level3Template
        self.authorizationExpirationDays = authorizationExpirationDays
        self.merchantParameterExceptions = merchantParameterExceptions
    }
}
