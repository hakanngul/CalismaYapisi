//
//  SabitListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct SabitListeleme: View {
    @State private var selectedItem = ""
    var body: some View {
        List {
            Section(header: Text("Sabit Listeleme")) {
                ItemTasarim(isim: "Hakan", resim: "person").onTapGesture {
                   
                    selectedItem = "Hakan"
                }
                ItemTasarim(isim: "Gül", resim: "person").onTapGesture {
                    selectedItem = "Gül"
                }
                ItemTasarim(isim: "Swift", resim: "swift").onTapGesture {
                    selectedItem = "Swift"
                }
                ItemTasarim(isim: "Apple", resim: "applelogo").onTapGesture {
                    selectedItem = "Apple"
                }
                ItemTasarim(isim: "Güneş", resim: "sun.min").onTapGesture {
                    selectedItem = "Güneş"
                }
            }
            
            Text("Seçilen Element: \(selectedItem)")
        }
    }
}




struct ItemTasarim : View {
    var isim:String
    var resim:String
    var body: some View {
        HStack {
            Image(systemName: resim)
            Text(isim)
        }
    }
}



struct SabitListeleme_Previews: PreviewProvider {
    static var previews: some View {
        SabitListeleme()
    }
}

