//
//  TransactionContext.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 11/1/22.
//

import Foundation
public struct TransactionContext: Codable {

    public enum Origination: String, Codable {
        case cashier = "Cashier"
        case ecommerce = "Ecommerce"
        case mobile = "Mobile"
        case ebpp = "Ebpp"
    }

    public enum TerminalCapabilities: String, Codable {
        case noTerminal = "NoTerminal"
        case manual = "Manual"
        case magneticStripe = "MagneticStripe"
        case chip = "Chip"
        case pin = "Pin"
    }

    public var origination: Origination?
    public var terminalCapabilities: TerminalCapabilities?
    /*public var deviceSerialNumber: String?
    public var kernelVersionNumber: String?
    public var deviceOsVersionNumber: String?
    public var deviceApplicationNumber: String?
    public var deviceDebitKey: String?
    public var bridgeVersionNumber: String?
    public var deviceType: String?
    public var terminalConfigurationFingerprint: String?
    public var terminalClientLocalIp: String?
    public var terminalClientLocalMacAddress: String?
    public var connectionType: String?
    public var deviceIdentifier: String?
    public var requesterIpAddress: String?
    public var geoLocationInformation: String?*/

    public init(
        origination: TransactionContext.Origination? = nil,
        terminalCapabilities: TransactionContext.TerminalCapabilities? = nil
        /* deviceSerialNumber: String? = nil,
        kernelVersionNumber: String? = nil,
        deviceOsVersionNumber: String? = nil,
        deviceApplicationNumber: String? = nil,
        deviceDebitKey: String? = nil,
        bridgeVersionNumber: String? = nil,
        deviceType: String? = nil,
        terminalConfigurationFingerprint: String? = nil,
        terminalClientLocalIp: String? = nil,
        terminalClientLocalMacAddress: String? = nil,
        connectionType: String? = nil,
        deviceIdentifier: String? = nil,
        requesterIpAddress: String? = nil,
        geoLocationInformation: String? = nil*/
    ) {
        self.origination = origination
        self.terminalCapabilities = terminalCapabilities
        /*self.deviceSerialNumber = deviceSerialNumber
        self.kernelVersionNumber = kernelVersionNumber
        self.deviceOsVersionNumber = deviceOsVersionNumber
        self.deviceApplicationNumber = deviceApplicationNumber
        self.deviceDebitKey = deviceDebitKey
        self.bridgeVersionNumber = bridgeVersionNumber
        self.deviceType = deviceType
        self.terminalConfigurationFingerprint = terminalConfigurationFingerprint
        self.terminalClientLocalIp = terminalClientLocalIp
        self.terminalClientLocalMacAddress = terminalClientLocalMacAddress
        self.connectionType = connectionType
        self.deviceIdentifier = deviceIdentifier
        self.requesterIpAddress = requesterIpAddress
        self.geoLocationInformation = geoLocationInformation*/
    }
}
