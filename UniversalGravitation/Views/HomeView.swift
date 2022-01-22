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
    var coefficient = 6.67 * pow(10.0, -11.0)
    var Force = 0
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                
            }) {
                Text("Let's Caluclate!")
            }.padding(.bottom, 20)
            
            Text("万有引力 \(Force)")
            Image("image")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
    
    //万有引力の関数
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
