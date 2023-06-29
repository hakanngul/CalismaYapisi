//
//  PickerSayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct PickerSayfa: View {
    @State private var countryList = [String]()
    @State private var selectedCountry = ""
    
    var body: some View {
        VStack (spacing: 30) {
            
            Picker("", selection: $selectedCountry) {
                ForEach(countryList, id: \.self) { country in
                    Text(country)
                }
            }
            
        }.onAppear(){
            countryList.append("Türkiye")
            countryList.append("Almanya")
            countryList.append("Fransa")
            countryList.append("İngiltere")
            countryList.append("İtalya")
            
            
        }
    }
}

struct PickerSayfa_Previews: PreviewProvider {
    static var previews: some View {
        PickerSayfa()
    }
}
