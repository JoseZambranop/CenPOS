//
//  MerchantParameterException.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct MerchantParameterException: Codable {

    public enum Option: String, Codable {
        case doNotPrompt = "DoNotPrompt"
        case _optional = "Optional"
        case _required = "Required"
        case mustPassOver = "MustPassOver"
    }

    public var parameterName: String?
    public var exceptionType: String?
    public var exceptionData: [String]?
    public var option: Option?
    public var sendEmailAlert: Bool?
    public var triggerAmount: Double?

    public init(
        parameterName: String? = nil,
        exceptionType: String? = nil,
        exceptionData: [String]? = nil,
        option: MerchantParameterException.Option? = nil,
        sendEmailAlert: Bool? = nil,
        triggerAmount: Double? = nil
    ) {
        self.parameterName = parameterName
        self.exceptionType = exceptionType
        self.exceptionData = exceptionData
        self.option = option
        self.sendEmailAlert = sendEmailAlert
        self.triggerAmount = triggerAmount
    }
}
