//
//  SecondView.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 24/05/24.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var analytics : Analytics
  
    var body: some View {
        VStack {
            Text("Second View")
                .font(.title)
                .fontWeight(.semibold)
            Button("Send Event"){
                analytics.sendLogs("Second View Button Clicked")
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    SecondView()
}
