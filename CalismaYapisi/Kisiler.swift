//
//  Kisiler.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 17/06/2023.
//

import Foundation


class Kisiler {
    var isim:String?
    var yas:Int?
    var boy:Double?
    var bekar:Bool?
    
    init(isim: String, yas: Int, boy: Double, bekar: Bool) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
    
    init() {
        
    }
    
}
