//
//  ToggleView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/7/21.
//

import SwiftUI

struct ToggleView: View {
   @State private var bool = false

    var body: some View {
      VStack{
      HStack {
         Spacer()
      Toggle(" Switch Toggle", isOn: $bool)
          .toggleStyle(SwitchToggleStyle())
         Spacer()
      }//hstack
      }//vstack
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
