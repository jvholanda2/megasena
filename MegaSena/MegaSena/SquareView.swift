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
        ZStack {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 40, height: 50)
            Text("\(number)")
                .foregroundColor(.white)
        }
        .background(Color.gray)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

#Preview {
    SquareView(number: 1)
}
    


