//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var alinanVeri = ""
    @State private var tf = ""
    var body: some View {
        VStack () {
            Text("Gelen Veri : \(alinanVeri)")
                .padding(10)
                .font(.system(size: 30))
                .background(.blue)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(10)
                
                
            TextField("Veri giriniz",text: $tf)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            
            Button("Veriyi Al") {
                alinanVeri = tf
            }
            //make background color red forground color white and font size 20 and padding
            .padding(10)
            .font(.system(size: 20))
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            
        
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
