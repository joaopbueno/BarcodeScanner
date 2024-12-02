//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by João Bueno on 28/11/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        VStack {
            NavigationView{
                VStack {
                    ScannerView(scannedCode: $viewModel.scannerCode, alertItem: $viewModel.alertItem)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    
                    Spacer().frame(height: 60)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    Text(viewModel.statusText)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(viewModel.statusTextColor)
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
