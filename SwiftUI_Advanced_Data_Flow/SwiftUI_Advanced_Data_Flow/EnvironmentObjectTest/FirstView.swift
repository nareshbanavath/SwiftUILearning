//
//  FirstView.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 24/05/24.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var analytics : Analytics
    var body: some View {
        
        VStack {
            Text("First View")
                .font(.title)
                .fontWeight(.semibold)
            Button("Send Event"){
                analytics.sendLogs("First View Button Clicked")
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
    }
}

#Preview {
    FirstView()
        .environmentObject(Analytics())
}
