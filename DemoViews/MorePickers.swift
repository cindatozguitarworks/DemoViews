//
//  MorePickers.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/7/21.
//

import SwiftUI


struct MorePickers: View {
   @State private var myColor = Color.white
   @State private var myDate =  Date()
   @State private var selectedChoice = "One"
   let choices = ["One", "Two", "Three", "Four","Five","Six","Seven", "Eight", "Nine","Ten","Eleven","Twelve"]
   
    var body: some View {

      VStack {
         Text("More Pickers")
          .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          .bold()
         
         Spacer()
         
         Text("Picker 3:WheelPickerStyle")
               Picker(selectedChoice, selection: $selectedChoice) {
                     ForEach(choices, id: \.self) {
                                        Text($0)  }
                     }//for
               .pickerStyle(WheelPickerStyle())
         
         Spacer()
         
         HStack{
            Spacer()
         ColorPicker("Color Picker", selection: $myColor)
            .frame(height:200)
            Spacer()
         }
         Spacer()
       
         
         
         
     }//vstack
     .frame(maxWidth: .infinity, maxHeight: .infinity)
     .background(myColor)
//
    }//body
}//View
struct MorePickers_Previews: PreviewProvider {
    static var previews: some View {
        MorePickers()
    }
}
