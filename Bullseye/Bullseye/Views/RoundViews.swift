//
//  RoundViews.swift
//  Bullseye
//
//  Created by Abraham Abreu on 15/03/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay (
                Circle()
                    .strokeBorder(Color("Border"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledText"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackground"))
            )
    }
}

struct RoundRectTextView: View {
    var title: String
    var text: String
    var body: some View {
        VStack {
            LabelText(text: title.uppercased())
            LabelContentText(text: String(text))
                .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
                .overlay(
                    RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                        .strokeBorder(Color("Border"), lineWidth: Constants.General.strokeWidth)
                )
        }
    }
}

struct RoundedTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay (
                Circle()
                    .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(title: "Score", text: "999")
            RoundRectTextView(title: "Round", text: "1")
            RoundedTextView(text: "1")
        }
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
