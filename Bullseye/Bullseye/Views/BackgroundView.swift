//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Abraham Abreu on 15/03/22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(
            Color("Background")
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct TopView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5) {
            RoundRectTextView(title: title, text: text)
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.totalScore))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
