//
//  Dice1View.swift
//  Dice Fight
//
//  Created by jacob simpson on 7/17/24.
//

import SwiftUI

struct Dice1View: View {
    
    @EnvironmentObject var diceOptions: TestData
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(diceOptions.diceColors.diceColor)
                .frame(width: 50, height: 50)
            
            Circle()
                .fill(diceOptions.diceColors.dotColor)
                .frame(width: 10, height: 10)
        }
    }
}

#Preview {
    let diceColors = TestData()
    return Dice1View()
        .environmentObject(diceColors)
}
