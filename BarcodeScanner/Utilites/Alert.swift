//
//  Alert.swift
//  BarcodeScanner
//
//  Created by João Bueno on 02/12/24.
//

import SwiftUI

struct AlertItem {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: String
}

struct AlertContext {
    static let invalidDeviceInput =  AlertItem(title: "Invalide Device Input", message: "Something is wrong with thw camera. We are unable to capture the input.", dismissButton: "OK")
    
    static let invalidScannedType =  AlertItem(title: "Invalide Scan Type", message: "Something is wrong with thw camera. We are unable to capture the input.", dismissButton: "OK")
}

