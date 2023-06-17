//
//  Anasayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkraniGeics = false
    
    init(){
        print("Init Metodu Çalıştı")
    }
    
    
    
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 30) {
                Button("Başla") {
                    oyunEkraniGeics.toggle()
                }
            }.navigationTitle("Anasayfa")
                .navigationDestination(isPresented: $oyunEkraniGeics ){
                    let kisi = Kisiler(isim: "Hakan", yas: 12, boy: 1.75, bekar: true)
                    OyunEkrani(kisi: kisi)
                }
                .onAppear() {
                    print("onAppear Metodu Çalıştı")
                }
                .onDisappear() {
                    print("onDisappear Metodu Çalıştı")
                }
        }
        
    }
    
}


struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
