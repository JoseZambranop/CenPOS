//
//  TransactionStatus.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct TransactionStatus: Codable {

    public enum TrxStatus: String, Codable {
        case _none = "None"
        case refunded = "Refunded"
        case partiallyRefunded = "PartiallyRefunded"
        case forced = "Forced"
        case _open = "Open"
        case expired = "Expired"
    }

    public var result: Int?
    public var message: String?
    public var hostResult: String?
    public var hostMessage: String?
    public var date: String?
    public var entryMode: String?
    public var processed: String?
    public var voided: Bool?
    public var traceNumber: String?
    // public var trxStatus: TrxStatus?
    public var parameterValidationResults: [ParameterValidationResult]?

    public init(
        result: Int? = nil,
        message: String? = nil,
        hostResult: String? = nil,
        hostMessage: String? = nil,
        date: String? = nil,
        entryMode: String? = nil,
        processed: String? = nil,
        voided: Bool? = nil,
        traceNumber: String? = nil,
        // trxStatus: TransactionStatus.TrxStatus? = nil,
        parameterValidationResults: [ParameterValidationResult]? = nil
    ) {
        self.result = result
        self.message = message
        self.hostResult = hostResult
        self.hostMessage = hostMessage
        self.date = date
        self.entryMode = entryMode
        self.processed = processed
        self.voided = voided
        self.traceNumber = traceNumber
        // self.trxStatus = trxStatus
        self.parameterValidationResults = parameterValidationResults
    }
}
