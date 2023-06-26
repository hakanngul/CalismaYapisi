//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 13/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var switchState = false
    var body: some View {
        VStack () {
            Spacer()
            
            Toggle("Switch", isOn: $switchState)
                .onChange(of:switchState){ value in
                    print("Value of : \(value)")
                }
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .red))
            
            //print switch state on Text and size also 20
            Text(switchState ? "ON" : "OFF")
                .font(.system(size: 20))
                .padding()
            
            
            
            Button("Resim 2") {
               
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
