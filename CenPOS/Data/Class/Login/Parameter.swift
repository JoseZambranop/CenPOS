//
//  Parameter.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct Parameter: Codable {

    public enum Option: String, Codable {
        case doNotPrompt = "DoNotPrompt"
        case _optional = "Optional"
        case _required = "Required"
        case mustPassOver = "MustPassOver"
    }

    public var name: String?
    public var option: Option?
    public var sendEmailAlert: Bool?
    public var triggerAmount: Double?

    public init(
        name: String? = nil,
        option: Parameter.Option? = nil,
        sendEmailAlert: Bool? = nil,
        triggerAmount: Double? = nil
    ) {
        self.name = name
        self.option = option
        self.sendEmailAlert = sendEmailAlert
        self.triggerAmount = triggerAmount
    }
}
