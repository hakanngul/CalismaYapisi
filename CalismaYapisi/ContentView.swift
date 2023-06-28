    //
    //  ContentView.swift
    //  CalismaYapisi
    //
    //  Created by Hakan Gül on 13/06/2023.
    //

import SwiftUI

struct ContentView: View {
    @State private var segmentedState = 0
    @State private var state = ""
    @State private var stepperState = 0
    @State private var sliderState = 30.0
    var body: some View {
        VStack {
            VStack () {
                    //Stepper 0 to 10
                Stepper("Steps", value: $stepperState, in: 0...10)
                    .padding()
                Text("Steps Count: \(stepperState)")
                    .padding()
            }
            Spacer(minLength: 1)
            VStack {
                Slider(value: $sliderState, in: 0...100).padding()
                Text("Sonuç : \(Int(sliderState))")
            }
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

