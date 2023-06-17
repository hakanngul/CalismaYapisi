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
    
    var kisi = Kisiler()
    
    var body: some View {
        VStack (spacing: 30) {
            
            //Text fill all variables
            Text("İsim: \(kisi.isim!) - Yas: \(kisi.yas!) - Boy: \(kisi.boy!) - Bekar: \(kisi.bekar! ? "Evet": "Hayır") ")
            
            
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
