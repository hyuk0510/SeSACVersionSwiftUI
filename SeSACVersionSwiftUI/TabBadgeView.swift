//
//  TabBadgeView.swift
//  SeSACVersionSwiftUI
//
//  Created by 선상혁 on 2023/11/23.
//

import SwiftUI

struct TabBadgeView: View {
    var body: some View {
        TabView {
            ForEach(TabItem.allCases, id: \.hashValue) { item in
                item.rootView
                    .tabItem { item.image }
                
            }
        }
//        .tabViewStyle(.page)
    }
}

extension TabBadgeView {
    
    private enum TabItem: CaseIterable {
        case home
        case favorite
        case chat
        case setting
        
        var image: Image { //
            switch self {
            case .home:
                Image(systemName: "house")
            case .favorite:
                Image(systemName: "star.fill")
            case .chat:
                Image(systemName: "character.bubble")
            case .setting:
                Image(systemName: "gear")
            }
        }
        
        @ViewBuilder
        var rootView: some View {
            switch self {
            case .home:
                ContentView()
            case .favorite:
                ZStack {
                    Color.green
                    Text("Favorite VIEW")
                }
            case .chat:
                ZStack {
                    Color.gray
                    Text("Chat VIEW")
                }
            case .setting:
                ZStack {
                    Color.purple
                    Text("setting VIEW")
                }
            }
        }
    }
}


#Preview {
    TabBadgeView()
}
