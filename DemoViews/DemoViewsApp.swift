//
//  DemoViewsApp.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/6/21.
//

import SwiftUI

@main
struct DemoViewsApp: App {
    var body: some Scene {
        WindowGroup {
         TabView {
           
            ContentView()
            PickerView()
            MorePickers()
            SliderEtcView()
            ButtonView()
          //  MenuView()
            DateView()
          //  ToggleView()
            ContentView()
            
            
        }
         .tabViewStyle(PageTabViewStyle())
         .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
       
       
         
        }
      
  }
}
