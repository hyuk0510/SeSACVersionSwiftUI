//
//  MainView.swift
//  SeSACVersionSwiftUI
//
//  Created by 선상혁 on 2023/11/23.
//

import SwiftUI

struct MainView: View {
    
    @State
    var sampleTest = false
    
    var body: some View {
        NavigationWrapper {
            Text("asfsfs")
                .navigationTitle("메인")
                .navigationBar {
                    Image(systemName: "star")
                } trailing: {
                    Image(systemName: "heart")
                }

            
            sample
        }
        
    }
    
    @ViewBuilder
    var sample: some View {
        if sampleTest {
            Text("View")
        } else {
            Text("afa")
        }
    }
}

#Preview {
    MainView()
}
