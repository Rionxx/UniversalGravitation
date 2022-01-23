//
//  HomeView.swift
//  UniversalGravitation
//
//  Created by FX on 2022/01/22.
//

//F = G * (M * m) / r * r

import SwiftUI

struct HomeView: View {
    @State private var M = ""
    @State private var m = ""
    @State private var radius = ""
    @State private var coefficient: Double = 6.67 * pow(10.0, -11.0)
    @State private var Force = 0.0
    @State private var finalForce = 0.0
    
    var body: some View {
        VStack {
            Text("万有引力の法則")
                .font(.title)
                .padding(.bottom, 20)
            
            VStack {
                TextField("Mの重さ", text: self.$M)
                TextField("mの重さ", text: self.$m)
                TextField("半径", text: self.$radius)
            }
            .frame(width: 200, height: 100)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.bottom, 30)
            
            Button(action: {
                self.Force = self.coefficient * (Double(self.M)! * Double(self.m)!) / (Double(self.radius)! * Double(self.radius)!)
                self.finalForce = Double(self.Force)
            }) {
                Text("Let's Caluclate!")
            }
            
            Button(action: {
                clear()
            }) {
                Text("Clear")
                    .foregroundColor(Color.red)
            }.padding(.bottom, 20)
            
            Text("万有引力 \(Force)")
            Image("image")
                .resizable()
                .frame(width: 200, height: 200)
            Spacer()
        }
    }
    
    func clear() {
        self.M = ""
        self.m = ""
        self.radius = ""
        self.Force = 0.0
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
