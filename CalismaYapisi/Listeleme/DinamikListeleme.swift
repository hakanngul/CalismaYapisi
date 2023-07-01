//
//  DinamikListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 30/06/2023.
//

import SwiftUI

struct DinamikListeleme: View {
    @State private var countryList = [Country]()
    
    func remove(at offsets: IndexSet) {
        let ulke = countryList[offsets.first!]
        
        countryList.remove(at: offsets.first!)
    }
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countryList, id: \.self.name) { country in
                   NavigationLink(destination: CountryDetail(country: country)) {
                    CountryListView(country: country)
                    }
                }
                .onDelete(perform: remove)
                .navigationTitle("Ülkeler")
            }
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

//how to send data to up struct

struct CountryListView : View {
    let country: Country
    @State private var alert = false
    var body: some View {
        HStack {
            Text(country.name ?? "")
            Spacer()
            Text("Seç")
                .foregroundColor(.red)
                .onTapGesture {
                    alert.toggle()
                }
                .alert(isPresented: $alert) {Alert(title: Text("Seçilen Ülke"),message: Text(country.name!))
                }
            
        }
    }
}



struct DinamikListeleme_Previews: PreviewProvider {
    static var previews: some View {
        DinamikListeleme()
    }
}
