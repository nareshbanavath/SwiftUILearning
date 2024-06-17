//
//  ThirdView.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 24/05/24.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var analytics : Analytics
    var body: some View {
        VStack {
            Text("Third View")
                .font(.title)
                .fontWeight(.semibold)
            Button("Send Event"){
                analytics.sendLogs("Third View Send Event Clicked")
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ThirdView()
}

