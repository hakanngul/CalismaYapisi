    //
    //  DateAndTimePicker.swift
    //  CalismaYapisi
    //
    //  Created by Hakan Gül on 29/06/2023.
    //

import SwiftUI

struct DateAndTimePicker: View {
    @State private var time = Date()
    @State private var date = Date()
    @State private var getDate = ""
    @State private var getTime = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 100) {
            DatePicker("Saat", selection: $time,
            displayedComponents: [.hourAndMinute])
            
            DatePicker("Tarih", selection: $date, displayedComponents: [.date])
            
            Text("Alınan Saat: --->   \(getTime)")
            Text("Alınan Tarih: \(getDate)")
            
            Button("Göster") {
                let tf = DateFormatter()
                tf.dateFormat = "hh:mm"
                getTime = tf.string(from: time)
                //get date
                let df = DateFormatter()
                df.dateFormat = "dd/MM/yyyy"
                getDate = df.string(from: date)
            
            }
            
            
        }.padding(30)
    }
}

struct DateAndTimePicker_Previews: PreviewProvider {
    static var previews: some View {
        DateAndTimePicker()
    }
}
