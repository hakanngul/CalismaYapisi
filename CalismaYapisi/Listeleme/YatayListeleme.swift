//
//  YatayListeleme.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 30/06/2023.
//

import SwiftUI

struct YatayListeleme: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(){
                YatayItemTasarim(isim: "Güneş", resim: "sun.min").onTapGesture {
                    print("Güneş Tıklandı")
                }
                YatayItemTasarim(isim: "Ay", resim: "moon").onTapGesture {
                    print("Ay tıklandı")
                }
                YatayItemTasarim(isim: "Yıldız", resim: "star").onTapGesture {
                    print("Star tıklandı")
                }
                YatayItemTasarim(isim: "Dünya", resim: "network").onTapGesture {
                    print("Star tıklandı")
                }
            }
        }.padding(10)
    }
}

struct YatayItemTasarim : View {
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

struct YatayListeleme_Previews: PreviewProvider {
    static var previews: some View {
        YatayListeleme()
    }
}
