//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var resimAdi = "mutlu";
    var body: some View {
        VStack () {
            Spacer()
            
            Image(resimAdi).resizable().frame(width: 200, height: 200, alignment: .center)
            
            
            Spacer()
            
            Button("Resim 1") {
                resimAdi = "mutlu"
            }
            .font(.system(size: 30))
            .padding()
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(30)
            .padding()
            
            Button("Resim 2") {
                resimAdi = "uzgun"
            }.font(.system(size: 30))
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding()
            Spacer()
            
            
        
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
