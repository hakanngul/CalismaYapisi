//
//  SearchableYapisi.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct SearchableYapisi: View {
    @State private var searchValue = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                
            }
            .navigationTitle("Ara")
        }
        .searchable(text: $searchValue, prompt: "Ara")
        .onChange(of: searchValue) { s in
            print("Arama Sonucu: \(s)")
            
        }
    }
}

struct SearchableYapisi_Previews: PreviewProvider {
    static var previews: some View {
        SearchableYapisi()
    }
}
