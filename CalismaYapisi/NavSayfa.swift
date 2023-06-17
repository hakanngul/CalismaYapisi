//
//  NavSayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 17/06/2023.
//

import SwiftUI

struct NavSayfa: View {
    
    init(){
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .black
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        NavigationStack {
            VStack {
                Text("NavSayfa")
            
            }.navigationTitle("Sayfa")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("Button Tapped")
                        }) {
                            Image(systemName: "arrowshape.turn.up.backward.fill")
                        }.foregroundColor(.white)
                    }
                    
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("Ayarlar") {
                            print("Ayarlara Tıklandı")
                        }
                        .foregroundColor(.white)
                        Button(action: {
                            print("Profile Tıklandı")
                        }) {
                            Image(systemName: "person.fill")
                        
                        }
                        .foregroundColor(.white)
                        Button {
                            print("Güç Kapatıldı")
                        } label: {
                            Image(systemName: "power")
                        }.foregroundColor(.white)
                    
                    }
                }
        }
    }
}

struct NavSayfa_Previews: PreviewProvider {
    static var previews: some View {
        NavSayfa()
    }
}
