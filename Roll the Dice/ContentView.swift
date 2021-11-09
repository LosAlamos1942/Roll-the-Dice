//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Student on 11/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Toss")
                .padding()
            Text ("\(randomValue)")
                .font(.system(size: 72))
                .padding()
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .onTapGesture {
                    withAnimation(.default) {
                        rotation += 360
                    }
                    randomValue = Int.random(in:1...6)
                }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
