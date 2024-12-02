//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by João Bueno on 28/11/24.
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

struct BarcodeScannerView: View {
    @State private var scannerCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        VStack {
            NavigationView{
                VStack {
                    ScannerView(scannedCode: $scannerCode, alertItem: $alertItem)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    
                    Spacer().frame(height: 60)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    Text(scannerCode.isEmpty ? "Not yet scanned" : scannerCode)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(scannerCode.isEmpty ? .red : .green)
                        .padding()
                    Button {
                        
                    } label: {
                        Text("Tap me")
                    }
                }
                .navigationTitle("Barcode Scanner")
//                .alert(item: $alertItem) {
//                    Alert(
//                        title: alertItem.title,
//                        message: alertItem.message,
//                        dismissButton: alertItem.dismissButton
//                    )
//                }
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
