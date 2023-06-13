//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct OyunEkrani: View {
    @Environment(\.presentationMode) var pm
    @State private var sonucEkraninaGecis = false
    
    
    var body: some View {
        VStack (spacing: 30) {
            Button("Bitti") {
                sonucEkraninaGecis.toggle()
            }
            .padding()
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
            Button("Geri") {
                pm.wrappedValue.dismiss()
            }
            .padding()
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(10)
        }.navigationTitle("Oyun Ekranı")
            .sheet(isPresented: $sonucEkraninaGecis) {
                SonucEkrani()
            }
    }
}

struct OyunEkrani_Previews: PreviewProvider {
    static var previews: some View {
        OyunEkrani()
    }
}
