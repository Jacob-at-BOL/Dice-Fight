//
//  ContentView.swift
//  Dice Fight
//
//  Created by Jacob on 7/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var notsure = TestData()
    
    var body: some View {
        VStack {
            BattleView()
        }
        .environmentObject(notsure)
    }
}

#Preview {
    ContentView()
}
