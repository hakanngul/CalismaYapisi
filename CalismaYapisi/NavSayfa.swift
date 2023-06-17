//
//  NavSayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 17/06/2023.
//

import SwiftUI

struct NavSayfa: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("NavSayfa")
            
            }.navigationTitle("Sayfa")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavSayfa_Previews: PreviewProvider {
    static var previews: some View {
        NavSayfa()
    }
}
