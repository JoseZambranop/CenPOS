//
//  MerchantInvoiceTemplate.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct MerchantInvoiceTemplate: Codable {

    public var transactionType: String?
    public var templateId: Int?

    public init(
        transactionType: String? = nil,
        templateId: Int? = nil
    ) {
        self.transactionType = transactionType
        self.templateId = templateId
    }
}
