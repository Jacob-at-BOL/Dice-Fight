//
//  BattleView.swift
//  Dice Fight
//
//  Created by jacob simpson on 7/17/24.
//

import SwiftUI

struct DiceOption {
    var diceValue: Int
    var diceView: AnyView
}

struct BattleView: View {
    
    @EnvironmentObject var diceStyleOptions: TestData
    
    @State private var goodDice: [DiceOption]
    @State private var badDice: [DiceOption]
    @State private var showDice: Bool = false
    @State private var goodTotal: Int = 0
    @State private var badTotal: Int = 0
    
    let diceOptions: [DiceOption] = [
        DiceOption(diceValue: 1, diceView: AnyView(Dice1View())),
        DiceOption(diceValue: 2, diceView: AnyView(Dice2View())),
        DiceOption(diceValue: 3, diceView: AnyView(Dice3View())),
        DiceOption(diceValue: 4, diceView: AnyView(Dice4View())),
        DiceOption(diceValue: 5, diceView: AnyView(Dice5View())),
        DiceOption(diceValue: 6, diceView: AnyView(Dice6View()))
    ]
    
    init()
    {
        _goodDice = State(initialValue: [diceOptions.randomElement()!, diceOptions.randomElement()!])
        
        _badDice = State(initialValue: [diceOptions.randomElement()!, diceOptions.randomElement()!])
    }
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Opponent")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
                .foregroundColor(badTotal > goodTotal ? .green : .black)
            
            HStack(alignment: .center) {
                if(showDice)
                {
                    ForEach(0..<badDice.count, id: \.self) { index in
                        self.badDice[index].diceView
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: {
                goodDice = [
                    diceOptions.randomElement()!,
                    diceOptions.randomElement()!
                ]
                
                badDice = [
                    diceOptions.randomElement()!,
                    diceOptions.randomElement()!
                ]
                
                goodTotal = goodDice[0].diceValue + goodDice[1].diceValue
                badTotal = badDice[0].diceValue + badDice[1].diceValue
                
                if(!showDice)
                {
                    showDice = true
                }
                
            }, label: {
                Text("Roll")
                    .font(.title2)
                    .fontWeight(.bold)
            })
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
            .background(.themeBlue)
            .foregroundColor(.white)
            .padding()
            
            Spacer()
            
            HStack(alignment: .center) {
                    if(showDice)
                    {
                        ForEach(0..<goodDice.count, id: \.self) { index in
                            self.goodDice[index].diceView
                        }
                    }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        
            Text("You")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
                .foregroundColor(badTotal < goodTotal ? .green : .black)
            
        }
        .frame(maxHeight: .infinity)
        .background(.white)
    }
}

#Preview {
    BattleView()
}
