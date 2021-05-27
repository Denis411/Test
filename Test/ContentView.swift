//
//  ContentView.swift
//  Test
//
//  Created by Programmer on 5/27/21.
//

import SwiftUI




struct ContentView: View {
    @State private var red: Double = 0.0
    @State private var green: Double = 0.0
    @State private var blue: Double = 0.0
    @State private var opasity: Double = 1.0
    
    var body: some View {
        VStack{
        Image(systemName: "umbrella")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color( red: red/255, green: green/255, blue: blue/255, opacity: opasity))
            .frame(width: 200, height: 200)
            
            Text("RED: \(red, specifier: "%.1f")")
            Slider(value: $red, in: 0...255, step: 0.5)
            Text("GREEN: \(green, specifier: "%.1f")")
            Slider(value: $green, in: 0...255, step: 0.5)
            Text("BLUE: \(blue, specifier: "%.1f")")
            Slider(value: $blue, in: 0...255, step: 0.5)
            Text("OPASITY: \(opasity, specifier: "%.g")")
            Slider(value: $opasity, in: 0...1, step: 0.05)
    }
  }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
