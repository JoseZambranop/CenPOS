//
//  PromptData.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct PromptData: Codable {

    public enum PromptType: String, Codable {
        case pin = "Pin"
        case keySerialNumber = "KeySerialNumber"
        case cvv = "CVV"
        case threeDSecurePaRes = "ThreeDSecurePaRes"
        case threeDSecureTransactionId = "ThreeDSecureTransactionId"
        case odometer = "Odometer"
        case fleetCustomerCode = "FleetCustomerCode"
        case vehicleNumber = "VehicleNumber"
        case fleetIdNumber = "FleetIdNumber"
        case driverNumber = "DriverNumber"
        case licenseNumber = "LicenseNumber"
        case jobNumber = "JobNumber"
        case department = "Department"
        case fleetCustomerData = "FleetCustomerData"
        case fleetPromptCode = "FleetPromptCode"
        case fleetRestrictionCode = "FleetRestrictionCode"
        case purchaseDeviceSequenceNumber = "PurchaseDeviceSequenceNumber"
        case driverPin = "DriverPin"
        case fleetUserId = "FleetUserId"
        case promoCode = "PromoCode"
        case threeDSecureMsgType = "ThreeDSecureMsgType"
        case threeDSecureReferenceId = "ThreeDSecureReferenceId"
        case threeDSecureJwtRequest = "ThreeDSecureJwtRequest"
        case threeDSecureJwtResponse = "ThreeDSecureJwtResponse"
    }

    public var promptType: PromptType?
    public var value: String?

    public init(
        promptType: PromptData.PromptType? = nil,
        value: String? = nil
    ) {
        self.promptType = promptType
        self.value = value
    }
}
