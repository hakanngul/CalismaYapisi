//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sayac = 0
    var body: some View {
        VStack (spacing: 100) {
            
            Text("Sayaç : \(sayac)")
                .font(.system(size: 30))
            
            Button("Tıkla") {
                sayac+=1
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(10)
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
