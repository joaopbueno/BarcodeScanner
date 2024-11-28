//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by João Bueno on 28/11/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        VStack {
            NavigationView{
                VStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    
                    Spacer().frame(height: 60)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    Text("Not yet scanned")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.green)
                        .padding()
                }
                .navigationTitle("Barcode Scanner")
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
