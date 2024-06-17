//
//  ContentView.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 23/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var analytics = Analytics()
    
    var body: some View {
        TabView{
            FirstView()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("First")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Second")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "3.circle.fill")
                    Text("Third")
                }
        }
        .environmentObject(analytics)
    }
}


#Preview {
    ContentView()
}
