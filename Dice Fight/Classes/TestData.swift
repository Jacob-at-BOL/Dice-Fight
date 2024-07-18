//
//  TestData.swift
//  Dice Fight
//
//  Created by jacob simpson on 7/17/24.
//

import SwiftUI

struct DiceOptions {
    var diceColor: Color = Color.blue
    var dotColor: Color = Color.black
}

class TestData: ObservableObject {
    @Published var diceColors: DiceOptions = DiceOptions()
}
