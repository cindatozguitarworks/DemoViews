//
//  DateView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/7/21.
//

import SwiftUI

struct DateView: View {
   @State private var myDate =  Date()
   
    var body: some View {
      VStack{
      Text("Date Picker")
       .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
       .bold()
      DatePicker("Date Picker", selection: $myDate)
         .datePickerStyle(GraphicalDatePickerStyle())
         .frame(height:400)
         Spacer()
         
      }//vstack
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
