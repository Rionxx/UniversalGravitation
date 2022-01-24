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
    @State private var r = ""
    @State private var coefficient: Double = 6.67 * pow(10.0, -11.0)
    @State private var Force = 0.0
    @State private var finalForce = 0.0
    
    var body: some View {
        VStack {
            Text("万有引力の法則")
                .font(.title)
                .padding(.bottom, UIScreen.screenWidth * 0.053)
            
            VStack {
                TextField("Mの重さ", text: self.$M)
                TextField("mの重さ", text: self.$m)
                TextField("半径", text: self.$r)
            }
            .frame(width: UIScreen.screenWidth * 0.53, height: UIScreen.screenWidth * 0.267)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.bottom, UIScreen.screenWidth * 0.08)
            
            HStack {
                Button(action: {
                    ForceCalucuration(Mount: self.M, mount: self.m, radius: self.r)
                }) {
                    RoundedRectangle(cornerRadius: 9.0)
                        .fill(Color.blue)
                        .frame(width: UIScreen.screenWidth * 0.32, height: UIScreen.screenWidth * 0.13)
                        .overlay(
                            Text("Caluculate")
                                .foregroundColor(Color.white)
                        )
                }
                
                Button(action: {
                    clear()
                }) {
                    RoundedRectangle(cornerRadius: 9.0)
                        .fill(Color.red)
                        .frame(width: UIScreen.screenWidth * 0.32, height: UIScreen.screenWidth * 0.13)
                        .overlay(
                            Text("Clear")
                                    .foregroundColor(Color.white)
                        )
                }
            }.padding(.bottom, UIScreen.screenWidth * 0.0267)
            
            
            Text("計算結果 \(Force)")
            Image("image")
                .resizable()
                .frame(width: UIScreen.screenWidth * 0.467, height: UIScreen.screenWidth * 0.467)
            Spacer()
        }
    }
    
    //function calculate function
    @discardableResult
    func ForceCalucuration(Mount: String, mount: String, radius: String) -> Double {
        self.Force = self.coefficient * (Double(self.M)! * Double(self.m)!) / (Double(self.r)! * Double(self.r)!)
        self.finalForce = Double(self.Force)
        if M == "" && m == "" && r == "" {
            print("計算ができません")
        }
        return finalForce
    }
    
    //clear textfield that wrote contents
    func clear() {
        self.M = ""
        self.m = ""
        self.r = ""
        self.Force = 0.0
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
