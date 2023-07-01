//
//  DinamikListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 30/06/2023.
//

import SwiftUI

struct DinamikListeleme: View {
    @State private var countryList = [Country]()
    var body: some View {
        NavigationStack {
            CountryListView(listOfCountry: countryList)
            .navigationTitle("Ülkeler")
        }.onAppear(){
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

struct CountryListView : View {
    var listOfCountry = [Country]()
    var body: some View {
        List(listOfCountry, id: \.self.name) { country in
            NavigationLink(destination: CountryDetail(country: country)) {
                Text("\(country.name ?? "") - \(country.capital ?? "")")
            }
        }//.listStyle(PlainListStyle()) klasik liste görünümü
    }
}



struct DinamikListeleme_Previews: PreviewProvider {
    static var previews: some View {
        DinamikListeleme()
    }
}
