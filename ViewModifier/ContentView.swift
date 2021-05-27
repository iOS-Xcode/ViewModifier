//
//  ContentView.swift
//  ViewModifier
//
//  Created by Seokhyun Kim on 2021-05-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
                .modifier(MyRoundedText())
                .foregroundColor(.white)
            Text("ViewModifier!")
                .myRoundedTextStyle()
            Image(systemName: "pencil")
                .myRoundedTextStyle()
            Rectangle()
                .frame(width: 100, height: 100)
                .myRoundedTextStyle()
        }
    }
}

//뷰를 꾸며주는 모디파이어
struct MyRoundedText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .padding()
            .background(Color.init(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
            .cornerRadius(20)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 10).foregroundColor(.blue)
            )
    }
}

extension View {
    func myRoundedTextStyle() -> some View {
        modifier(MyRoundedText())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
