//
//  ContentView.swift
//  MegaSena
//
//  Created by João Vitor Alves Holanda on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("MegaSena")
                Image(systemName: "dice.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding()
            HStack(spacing: 10) {
                ForEach(1...6, id: \.self) { _ in
                    SquareView(number: getRandomNumber())
                }
            }
            .padding()
        }

        }
    }


func getRandomNumber() -> Int {
    // Substitua esta função por sua própria lógica para gerar números
    return Int.random(in: 1...100)
}

#Preview {
    ContentView()
}
