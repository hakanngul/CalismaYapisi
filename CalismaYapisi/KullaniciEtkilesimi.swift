//
//  KullaniciEtkilesimi.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct KullaniciEtkilesimi: View {
    @State private var alert = false
    @State private var actionSheet = false
    @State private var message = ""
    @State private var actionMessage = ""
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
            
            Text(actionMessage)
            
            Button("Action Sheet") {
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet) {
                ActionSheet(title: Text("Başlık"), message: Text("İçerik"),
                buttons: [
                    .default(Text("İptal"), action: {
                        actionMessage = "İptal Edildi"
                    }),
                    .destructive(Text("Tamam"), action: {
                        actionMessage = "Tamam Seçildi"
                    })
                    ]
                )
            }
            Text("Context Menü Text: \(actionMessage)")
            
            Text("Context Menü")
                .contextMenu {
                    Button(action: {
                        actionMessage = "Resim Seçildi"
                    }, label: {
                        Label("Resim Çek", systemImage: "camera")
                    })
                    // Video button create
                    Button(action: {
                        actionMessage = "Video Seçildi"
                    }, label: {
                        Label("Video Çek", systemImage: "video")
                    })
                
                }
        }
    
    }
}

struct KullaniciEtkilesimi_Previews: PreviewProvider {
    static var previews: some View {
        KullaniciEtkilesimi()
    }
}
