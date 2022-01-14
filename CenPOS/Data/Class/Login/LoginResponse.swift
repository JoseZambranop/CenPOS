//
//  LoginResponse.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 27/12/21.
//

import Foundation
public struct LoginResponse: Codable {

    public var user: User?
    public var merchant: Merchant?
    public var parameters: [Parameter]?
    public var privileges: [String]?
    public var sessionId: String?

    public init(
        user: User? = nil,
        merchant: Merchant? = nil,
        parameters: [Parameter]? = nil,
        privileges: [String]? = nil,
        sessionId: String? = nil
    ) {
        self.user = user
        self.merchant = merchant
        self.parameters = parameters
        self.privileges = privileges
        self.sessionId = sessionId
    }
}
