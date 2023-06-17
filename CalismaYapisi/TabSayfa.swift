//
//  TabSayfa.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 17/06/2023.
//

import SwiftUI

struct TabSayfa: View {
    
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .systemIndigo
        
        changeColor(itemAppearance: appearance.stackedLayoutAppearance)
        changeColor(itemAppearance: appearance.inlineLayoutAppearance)
        changeColor(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
    }
    
    func changeColor(itemAppearance:UITabBarItemAppearance) {
        //Selected Situation
        itemAppearance.selected.iconColor = .systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        //Unselected Situation
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
    
    }
    
    
    
    var body: some View {
        NavigationStack {
            TabView {
                HomePage()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SettingsPage()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                SonucEkrani()
                    .tabItem {
                        Image(systemName: "cloud")
                        Text("Sonuc")
                    }
            
            }
            .navigationTitle("Tab View Kullanımı")
        }
    }
}

struct TabSayfa_Previews: PreviewProvider {
    static var previews: some View {
        TabSayfa()
    }
}
