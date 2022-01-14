//
//  Card.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation

public struct Card: Codable {

    public enum ProcessAs: String, Codable {
        case card = "Card"
        case credit = "Credit"
        case debit = "Debit"
        case fleet = "Fleet"
        case ebt = "Ebt"
        case gift = "Gift"
        case loyalty = "Loyalty"
    }

    public enum CardholderVerificationMethod: String, Codable {
        case _none = "None"
        case offlinePin = "OfflinePin"
        case onlinePin = "OnlinePin"
        case signature = "Signature"
        case noCvmRequired = "NoCvmRequired"
        case threeDSecure = "ThreeDSecure"
    }

    public enum MerchantInitiatedType: String, Codable {
        case customerInitiated = "CustomerInitiated"
        case unscheduledCardOnFile = "UnscheduledCardOnFile"
        case installmentPayment = "InstallmentPayment"
        case recurringPayment = "RecurringPayment"
    }

    public enum EbtCardType: String, Codable {
        case _none = "None"
        case foodAndStamps = "FoodAndStamps"
        case cashBenefits = "CashBenefits"
    }

    public var processAs: ProcessAs?
    public var authorizationNumber: String?
    public var cardExpirationDate: String?
    public var cardLastFourDigits: String?
    // public var cardNumber: String?
   // public var magneticData: String?
   // public var cardholderVerificationMethod: CardholderVerificationMethod?
   // public var tokenId: String?
   // public var merchantInitiatedType: MerchantInitiatedType?
   // public var installmentCount: Int?
   // public var installmentSequenceNumber: Int?
    public var cardType: String?
   // public var ebtCardType: EbtCardType?
    public var cardProduct: String?
   // public var emvData: String?
   // public var emvResponseData: String?
   // public var emvConfirmationData: String?
   // public var emvCompleteData: String?
    public var prompts: [PromptData]?
    public var contactless: Bool?

    public init(
        processAs: Card.ProcessAs? = nil,
        authorizationNumber: String? = nil,
        cardExpirationDate: String? = nil,
        cardLastFourDigits: String? = nil,
        cardNumber: String? = nil,
        magneticData: String? = nil,
        cardholderVerificationMethod: Card.CardholderVerificationMethod? = nil,
        tokenId: String? = nil,
        merchantInitiatedType: Card.MerchantInitiatedType? = nil,
        installmentCount: Int? = nil,
        installmentSequenceNumber: Int? = nil,
        cardType: String? = nil,
        ebtCardType: Card.EbtCardType? = nil,
        cardProduct: String? = nil,
        emvData: String? = nil,
        emvResponseData: String? = nil,
        emvConfirmationData: String? = nil,
        emvCompleteData: String? = nil,
        prompts: [PromptData]? = nil,
        contactless: Bool? = nil
    ) {
        self.processAs = processAs
        self.authorizationNumber = authorizationNumber
        self.cardExpirationDate = cardExpirationDate
        self.cardLastFourDigits = cardLastFourDigits
        // self.cardNumber = cardNumber
        // self.magneticData = magneticData
        // self.cardholderVerificationMethod = cardholderVerificationMethod
        // self.tokenId = tokenId
        // self.merchantInitiatedType = merchantInitiatedType
        // self.installmentCount = installmentCount
        // self.installmentSequenceNumber = installmentSequenceNumber
        self.cardType = cardType
        // self.ebtCardType = ebtCardType
        self.cardProduct = cardProduct
        // self.emvData = emvData
        // self.emvResponseData = emvResponseData
        // self.emvConfirmationData = emvConfirmationData
        // self.emvCompleteData = emvCompleteData
        self.prompts = prompts
        self.contactless = contactless
    }
}
