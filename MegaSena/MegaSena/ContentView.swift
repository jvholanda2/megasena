//
//  ContentView.swift
//  MegaSena
//
//  Created by João Vitor Alves Holanda on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MegasenaViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("MegaSena")
                Image(systemName: "dice.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding()
            HStack {
                Button(action: {viewModel.generateRandomNumbers()}, label: {
                    Text("Gerar Números")
                })
            }            
            .padding(8)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            Text("Números da Mega Sena:")
            
            HStack {
                ForEach(viewModel.numbers, id: \.self) { number in
                    SquareView(number: number)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
