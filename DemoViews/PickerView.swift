//
//  PickerView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/6/21.
//

import SwiftUI

struct PickerView: View {
   
   @State private var selectedChoice = "One"
   @State private var selectedSmallChoice = "One"
   
   let choicesSmall = ["One", "Two", "Three","Four","Five","Six"]
   let choices = ["One", "Two", "Three", "Four","Five","Six","Seven", "Eight", "Nine","Ten","Eleven","Twelve"]

   var body: some View {
      
  VStack{
  //   Form {
  //     Section {
       Text("Pickers")
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .bold()
   Spacer()
 //      } //Section1
      
 //      Section {
//          Text("Picker 1: MenuPickerStyle")
//           Picker(selectedChoice, selection: $selectedChoice) {
//                 ForEach(choices, id: \.self) {
//                                    Text($0)  }
//                 }//for
           //.pickerStyle(MenuPickerStyle())
 //  } //Section2
  //    Section {
   Spacer()
        Text("Picker 2:SegmentedPickerStyle")
         Picker(selectedSmallChoice, selection: $selectedSmallChoice) {
                 ForEach(choicesSmall, id: \.self) {
                                    Text($0)  }
                 }//for
           .pickerStyle(SegmentedPickerStyle())
   Spacer()
 //  } //Section
      
 //  Section {
//     Text("Picker 3:WheelPickerStyle")
//        Picker(selectedChoice, selection: $selectedChoice) {
//              ForEach(choices, id: \.self) {
//                                 Text($0)  }
//              }//for
//        .pickerStyle(WheelPickerStyle())
//} //Section3
   Spacer()
  }//vstack
      
//   }//form

  }//body
}//view


struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
