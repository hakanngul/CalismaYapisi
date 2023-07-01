//
//  Countries.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 30/06/2023.
//

import Foundation


class Country : Identifiable {
    var name:String?
    var capital:String?
    
    init(){
        
    }
    
    init(name: String, capital: String) {
        self.name = name
        self.capital = capital
    }
}
