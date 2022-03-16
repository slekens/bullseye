//
//  TextViews.swift
//  Bullseye
//
//  Created by Abraham Abreu on 15/03/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .font(.body)
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .bold()
            .font(.caption)
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelContentTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "100")
            SliderLabelText(text: "1")
            LabelTextView(text: "Score")
            LabelContentTextView(text: "999")
        }
    }
}
