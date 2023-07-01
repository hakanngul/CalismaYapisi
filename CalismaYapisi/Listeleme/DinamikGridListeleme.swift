//
//  DinamikGridListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 01/07/2023.
//

import SwiftUI

struct DinamikGridListeleme: View {
    @State private var countryList = [Country]()
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let itemWidth = (screenWidth - 60 ) / 3
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
                                       ], spacing: 20) {
                        ForEach(countryList) { country in
                            CountryGridItem(country: country, height: 150, width: itemWidth)
                        }
                    }
                    
                    
                }
                .padding(10)
                .navigationTitle("Ülkeler")
                    .onAppear() {
                        var list = [Country]()
                        list.append(Country(name: "Türkiye", capital: "Ankara"))
                        list.append(Country(name: "Almanya", capital: "Berlin"))
                        list.append(Country(name: "Fransa", capital: "Paris"))
                        list.append(Country(name: "İngiltere", capital: "Londra"))
                        list.append(Country(name: "İtalya", capital: "Roma"))
                        countryList = list
                }
            }
        }
    }
}
// CountryGridItem : View create
struct CountryGridItem : View {
    var country = Country()
    var height = 0.0
    var width = 0.0
    var body: some View {
        VStack {
            Text(country.name!)
        }
        .frame(width: width, height: height)
        .border(Color.blue.opacity(0.5))
        
    }
}




struct DinamikGridListeleme_Previews: PreviewProvider {
    static var previews: some View {
        DinamikGridListeleme()
    }
}
