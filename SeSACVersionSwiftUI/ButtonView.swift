//
//  ButtonView.swift
//  SeSACVersionSwiftUI
//
//  Created by 선상혁 on 2023/11/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            text
                .wrapToButton {
                    print("=text==")
                }
            image
                .wrapToButton {
                    print("==image===")
                }
            rectangle
                .wrapToButton {
                    print("===rectangle==")
                }
        }
    }
    
    var text: some View {
        Text("Hello, World!")
            .padding(30)
            .background(.black)
            .foregroundStyle(.white)
            .font(.largeTitle)
    }
    
    var image: some View {
        Image(systemName: "person.fill")
            .scaleEffect(2)
            .padding()
    }
    var rectangle: some View {
        Rectangle()
            .padding()
            .frame(height: 150)
    }
}

#Preview {
    ButtonView()
}
