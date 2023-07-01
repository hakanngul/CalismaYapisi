//
//  CountryPage.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 30/06/2023.
//

import SwiftUI

struct CountryDetail: View {
    @Environment(\.presentationMode) var pm
    var country: Country = Country()
    var body: some View {
        VStack {
            Text("Ülke Adı: \(country.name ?? "")")
            Text("Ülke Başkenti: \(country.capital ?? "")")
        }
    }
}

struct CountryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetail()
    }
}

