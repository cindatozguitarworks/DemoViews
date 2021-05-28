//
//  SliderEtcView.swift
//  DemoViews
//
//  Created by Cynthia Anderson on 4/9/21.
//

import SwiftUI

struct SliderEtcView: View {
  @State private var value = 0  //stepper 1
  let colors: [Color] = [.orange, .red, .gray, .blue,
                              .green, .purple, .pink]
   
   @State private var bool = false  //toggle
   
   @State private var value2 = 1  //stepper 2
   
   @State private var speed = 50.0  //slider
   @State private var isEditing = false
   
   func incrementStep() {
          value += 1
          if value >= colors.count { value = 0 }
      }

      func decrementStep() {
          value -= 1
          if value < 0 { value = colors.count - 1 }
      }
   
   
    var body: some View {
      VStack{
        
      Text("Sliders,Etc.")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
         
         Spacer()
         
         VStack{
         Text("Slider")
            HStack{
              Spacer()
         Slider(
                    value: $speed,
                    in: 0...100,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                Text("\(speed)")
                    .foregroundColor(isEditing ? .red : .blue)
             Spacer()
            }//hstack
            
            Spacer()
            
            HStack {
              Spacer()
             Toggle(" Switch Toggle", isOn: $bool)
               .toggleStyle(SwitchToggleStyle())
               Spacer()
             }//hstack
            
            Spacer()
         }//Vstack middle
         
    //     Spacer()
         VStack{
         Text("Stepper: Non Increment Example")
         
         HStack {
          Spacer()
          Stepper(onIncrement: incrementStep,
                     onDecrement: decrementStep) {
                     Text("Value: \(value) Color: \(colors[value].description)")
                 }
                 .padding(5)
                 .background(colors[value])
               Spacer()
             }//hstack
          Spacer()
            
          Text("Stepper: Increment Example  \(value2)")
         HStack {
         Spacer()
         Stepper("Stepper", onIncrement: { value2 += 10 }, onDecrement: { value2 -= 10 })
         Spacer()
         }//hstack
      
         Spacer()
         }//middle vstack
         
        Spacer()
         
//       HStack {
//         Spacer()
//        Toggle(" Switch Toggle", isOn: $bool)
//          .toggleStyle(SwitchToggleStyle())
//          Spacer()
//        }//hstack
//       Spacer()
//       Spacer()
      }//vstack
    }
}

struct SliderEtcView_Previews: PreviewProvider {
    static var previews: some View {
        SliderEtcView()
    }
}
