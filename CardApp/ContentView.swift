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
        ZStack {
            Color(red: 0.97, green: 0.96, blue: 0.56)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Image("card")
                    .resizable()
                    .frame(width: 300.0, height: 133)
                    .shadow(radius: 3)
                    .rotation3DEffect(.degrees(isJapanese ? 0 : 180),
                                    axis: (x: 0, y: 1, z: 0))
                    .animation(.spring())
                    .onTapGesture {
                        self.isJapanese.toggle()
                    }
                    Text(isJapanese ? japanese : cards[japanese]!)
                        .font(.largeTitle)
                }.padding()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
