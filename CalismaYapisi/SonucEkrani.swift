//
//  SonucEkrani.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct SonucEkrani: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack (spacing: 30){
            Text("Sonuç Ekranı ").font(.system(size: 50))
            Button("Kapat") {
                pm.wrappedValue.dismiss()
            }
            .font(.system(size: 40))
        }
    }
}

struct SonucEkrani_Previews: PreviewProvider {
    static var previews: some View {
        SonucEkrani()
    }
}
