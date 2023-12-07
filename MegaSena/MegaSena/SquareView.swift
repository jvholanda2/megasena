//
//  SquareView.swift
//  MegaSena
//
//  Created by João Vitor Alves Holanda on 07/12/23.
//

import SwiftUI

struct SquareView: View {
    var number: Int

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Text("\(number)")
                .foregroundColor(.white)
        }
    }
}

#Preview {
    SquareView(number: 1)
}
    


