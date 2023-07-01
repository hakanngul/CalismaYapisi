//
//  SabitGridListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct SabitGridListeleme: View {
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns:[
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]
                ,spacing: 20.0
            ){
                GridItemTasarim(isim: "Güneş", resim: "sun.min").onTapGesture {
                    print("Güneş Tıklandı")
                }
                GridItemTasarim(isim: "Ay", resim: "moon").onTapGesture {
                    print("Ay tıklandı")
                }
                GridItemTasarim(isim: "Yıldız", resim: "star").onTapGesture {
                    print("Star tıklandı")
                }
                GridItemTasarim(isim: "Dünya", resim: "network").onTapGesture {
                    print("Star tıklandı")
                }
                
            }
        }.padding(10)
    }
}



struct GridItemTasarim : View {
    var isim:String
    var resim:String
    var body: some View {
        VStack {
            Image(systemName: resim)
            Text(isim)
        }.frame(width: 100, height: 100)
            .border(.gray)
    }
}

struct SabitGridListeleme_Previews: PreviewProvider {
    static var previews: some View {
        SabitGridListeleme()
    }
}
