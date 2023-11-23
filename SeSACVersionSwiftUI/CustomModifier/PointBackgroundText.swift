//
//  PointBackgroundText.swift
//  SeSACVersionSwiftUI
//
//  Created by 선상혁 on 2023/11/23.
//

import SwiftUI
//ViewModifier: Custom Modifier를 생성할 수 있도록 도와주는 프로토콜
private struct PointBackgroundText: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(.capsule)
    }
}

extension View {
    func asPointBackgroundText() -> some View {
        modifier(PointBackgroundText())
    }
}
