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
            Button("Gerar Números") {
                viewModel.generateRandomNumbers()
            }
            
            Text("Números da Mega Sena:")
            
            HStack {
                ForEach(viewModel.numbers, id: \.self) { number in
                    Text("\(number)")
                        .padding()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
