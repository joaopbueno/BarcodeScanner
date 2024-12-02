//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by João Bueno on 02/12/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannerCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannerCode.isEmpty ? "Not yet scanned" : scannerCode
    }
    
    var statusTextColor: Color {
        scannerCode.isEmpty ? .red : .green
    }
}
