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
            .frame(width: 56.0, height: 56.0)
            .overlay (
                Circle()
                    .strokeBorder(Color("Border"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledText"))
            .frame(width: 56.0, height: 56.0)
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
            LabelTextView(text: title.uppercased())
            LabelContentTextView(text: String(text))
                .frame(width: 68.0, height: 56.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 21.0)
                        .strokeBorder(Color("Border"), lineWidth: 2.0)
                )
        }
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(title: "Score", text: "999")
            RoundRectTextView(title: "Round", text: "1")
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
