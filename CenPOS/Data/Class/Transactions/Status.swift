//
//  Status.swift
//  CenPOS
//
//  Created by Becerra Borges, Eduardo Yorman on 14/1/22.
//

import Foundation

struct Status: Codable {

    let result: Int?
    let message: String?
    let hostResult: String?
    let hostMessage: String?
    let date: String?
    let entryMode: String?
    let processed: String?
    let voided: Bool?
    let traceNumber: String?
    let parameterValidationResults: [ParameterValidationResults]?

    enum CodingKeys: String, CodingKey {
        case result = "result"
        case message = "message"
        case hostResult = "hostResult"
        case hostMessage = "hostMessage"
        case date = "date"
        case entryMode = "entryMode"
        case processed = "processed"
        case voided = "voided"
        case traceNumber = "traceNumber"
        case parameterValidationResults = "parameterValidationResults"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        result = try values.decodeIfPresent(Int.self, forKey: .result)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        hostResult = try values.decodeIfPresent(String.self, forKey: .hostResult)
        hostMessage = try values.decodeIfPresent(String.self, forKey: .hostMessage)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        entryMode = try values.decodeIfPresent(String.self, forKey: .entryMode)
        processed = try values.decodeIfPresent(String.self, forKey: .processed)
        voided = try values.decodeIfPresent(Bool.self, forKey: .voided)
        traceNumber = try values.decodeIfPresent(String.self, forKey: .traceNumber)
        parameterValidationResults = try values.decodeIfPresent([ParameterValidationResults].self, forKey: .parameterValidationResults)
    }

}
