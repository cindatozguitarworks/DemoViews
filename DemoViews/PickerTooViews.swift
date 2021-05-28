//
//  PickerTooViews.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/7/21.
//

import SwiftUI

struct PickerTooViews: View {
   
      
      @State private var selectedChoice = "One"
      @State private var selectedSmallChoice = "One"
      
      let choicesSmall = ["One", "Two", "Three"]
      let choices = ["One", "Two", "Three", "Four","Five","Six","Seven", "Eight", "Nine","Ten","Eleven","Twelve"]

      var body: some View {
         
     VStack{
     
    Text("Pickers II")
           .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
           .bold()
        
      Spacer()
          
      Text("Picker 1: DefaultPickerStyle")
         Picker(selectedChoice, selection: $selectedChoice) {
               ForEach(choices, id: \.self) {
                                       Text($0)  }
                    }//for
              .pickerStyle(DefaultPickerStyle())
      Spacer()
         
           Text("Picker 2:SegmentedPickerStyle")
            Picker(selectedSmallChoice, selection: $selectedSmallChoice) {
                    ForEach(choicesSmall, id: \.self) {
                                       Text($0)  }
                    }//for
              .pickerStyle(SegmentedPickerStyle())
      
      Spacer()
      
//        Text("Picker 3:InlinePickerStyle")
//           Picker(selectedChoice, selection: $selectedChoice) {
//                 ForEach(choices, id: \.self) {
//                                    Text($0)  }
//                 }//for
//           .pickerStyle(InlinePickerStyle())
//      
     }//vstack
     .padding(.bottom)
     }//body
   }//View


struct PickerTooViews_Previews: PreviewProvider {
    static var previews: some View {
        PickerTooViews()
    }
}
