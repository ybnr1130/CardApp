//
//  ContentView.swift
//  CardApp
//
//  Created by 薮内紀仁 on 2022/01/03.
//

import SwiftUI

struct ContentView: View {
    var cards = ["かばん" : "bag",
                 "自動車" : "car",
                 "誕生日" : "birthday"]
    @State var japanese = "かばん"
    @State var isJapanese = true
    var body: some View {
        VStack {
            Text(isJapanese ? japanese : cards[japanese]!)
            HStack {
                Button(/*@START_MENU_TOKEN@*/"裏返す"/*@END_MENU_TOKEN@*/) {
                    self.isJapanese.toggle()
                }
                Button(/*@START_MENU_TOKEN@*/"次へ"/*@END_MENU_TOKEN@*/) {
                    self.isJapanese = true
                    self.japanese = self.cards.randomElement()!.key
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
