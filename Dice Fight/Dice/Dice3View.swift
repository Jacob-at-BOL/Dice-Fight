//
//  Dice1View.swift
//  Dice Fight
//
//  Created by jacob simpson on 7/17/24.
//

import SwiftUI

struct Dice3View: View {
    @EnvironmentObject var diceOptions: TestData
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(diceOptions.diceColors.diceColor)
                .frame(width: 50, height: 50)
            
            Circle()
                .fill(diceOptions.diceColors.dotColor)
                .frame(width: 10, height: 10)
                .position(x: 12, y: 12)
            
            Circle()
                .fill(diceOptions.diceColors.dotColor)
                .frame(width: 10, height: 10)
                .position(x: 38, y: 38)
            
            Circle()
                .fill(diceOptions.diceColors.dotColor)
                .frame(width: 10, height: 10)
        }
        .frame(width: 50, height: 50)
    }
}

#Preview {
    let diceColors = TestData()
    return Dice3View()
        .environmentObject(diceColors)
}
