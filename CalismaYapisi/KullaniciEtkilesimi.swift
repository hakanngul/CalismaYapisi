//
//  KullaniciEtkilesimi.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct KullaniciEtkilesimi: View {
    @State private var alert = false
    @State private var message = ""
    var body: some View {
        //Vstack and 2 button 1 text
        VStack(spacing: 100) {
            
            Text(message)
            
            Button("Alert") {
                alert = true
            }
            .alert("Başlık", isPresented: $alert, actions: {
                Button("İptal", role: .cancel, action: {
                    message = "İptal Edildi"
                })
                Button("Tamam", role: .destructive, action: {
                    message = "Tamam Seçildi"
                })
            },
                   message: {
                Text("İçerik")
            })
            
            
            Button("Action Sheet") {
                Text("Merhaba Dünya")
            }
        }
    
    }
}

struct KullaniciEtkilesimi_Previews: PreviewProvider {
    static var previews: some View {
        KullaniciEtkilesimi()
    }
}
