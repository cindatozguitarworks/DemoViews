//
//  ButtonView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/9/21.
//

import SwiftUI

struct ButtonView: View {
    @State var count = 0
   
    var body: some View {
      
   VStack{
      Text("Buttons")
       .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
       .bold()
      Spacer()
      HStack{
         Spacer()
         Button("Plain",action: {}).buttonStyle(PlainButtonStyle())
         Spacer()
         
         Button("Borderless",action: {}).buttonStyle(BorderlessButtonStyle())
         Spacer()
         
         Button("Default",action: {}).buttonStyle(DefaultButtonStyle())
         Spacer()
      }//hstack
         Spacer()
         Menu {
             Button("Duplicate", action: duplicate)
             Button("Rename", action: rename)
             Button("Delete…", action: delete)
             Menu("Copy") {
                 Button("Copy", action: copy)
                 Button("Copy Formatted", action: copyFormatted)
                 Button("Copy Library Path", action: copyPath)
             }//inner menu - one way
         }
         label: {
          Label("Menu Button",systemImage: "sun.haze")
        }//outer menu - other label
         .menuStyle(DefaultMenuStyle())
      Spacer()
    }//Vstack
      
    }//body
   
   func duplicate() { }
   func rename() { }
   func delete() { }
   func copy() { }
   func copyFormatted() { }
   func copyPath() { }
   
}//view

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
