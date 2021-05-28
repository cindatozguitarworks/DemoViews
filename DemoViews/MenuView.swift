//
//  MenuView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/12/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
      
      Menu("Actions") {
          Button("Duplicate", action: duplicate)
          Button("Rename", action: rename)
          Button("Delete…", action: delete)
          Menu("Copy") {
              Button("Copy", action: copy)
              Button("Copy Formatted", action: copyFormatted)
              Button("Copy Library Path", action: copyPath)
          }
      }//menu
      .menuStyle(DefaultMenuStyle())
    }

   
   
   
   
   
   func duplicate() { }
   func rename() { }
   func delete() { }
   func copy() { }
   func copyFormatted() { }
   func copyPath() { }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
