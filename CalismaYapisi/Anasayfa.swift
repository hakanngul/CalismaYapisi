//
//  Anasayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkraniGeics = false
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 30) {
                NavigationLink(destination: OyunEkrani()) {
                    Text("Başla")
                }
            }.navigationTitle("Anasayfa")
        }
    }
}

struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
