//
//  ContentView.swift
//  SeSACVersionSwiftUI
//
//  Created by 선상혁 on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foreground(.orange)
            
            Text("Hello, world!")
                .asPointBackgroundText()
            Text("zzz")
                .asPointBackgroundText()
            Text("aaa")
                .asPointBackgroundText()
            
            Button(action: {
                
            }, label: {
                Text("Button")
                    .font(.largeTitle)
                    .bold()
                    .foreground(.green)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
