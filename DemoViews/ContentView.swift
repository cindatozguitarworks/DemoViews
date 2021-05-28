//
//  ContentView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack{
      Text("Demo Views")
       .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
       .bold()
            .padding()
         Image("OGW")
                   .resizable()
                   .scaledToFit()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
