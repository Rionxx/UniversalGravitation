//
//  ContentView.swift
//  UniversalGravitation
//
//  Created by FX on 2022/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var price = ""
    @State private var tax = ""
    @State private var totalSum = 0
    @State private var finalSum = 0
    
    var body: some View {
        VStack {
            TextField("価格", text: self.$price)
                .frame(width: 150, height: 50)
                .keyboardType(.default)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            TextField("税", text: self.$tax)
                .frame(width: 150, height: 50)
                .keyboardType(.default)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                self.totalSum = Int(Double(self.price)! + Double(self.price)! * Double(self.tax)! / 100.0)
                self.finalSum = Int(self.totalSum)
            }) {
                Text("計算!")
            }
            
            Text("Sum: \(finalSum)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
