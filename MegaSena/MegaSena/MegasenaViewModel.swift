//
//  MegasenaViewModel.swift
//  MegaSena
//
//  Created by Caio Vinicius on 07/12/23.
//

import SwiftUI

class MegasenaViewModel: ObservableObject {
    @Published var numbers: [Int] = []
    
    func generateRandomNumbers() {
        numbers = (1...6).map { _ in Int.random(in: 1...60) }
    }
}
