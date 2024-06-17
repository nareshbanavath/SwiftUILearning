//
//  ChildView2.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 25/05/24.
//

import SwiftUI

struct ChildView2: View {
    @State var event : String = ""
    var body: some View {
        VStack {
            Text("I am in ChildView2")
                .font(.title)
            Button("Send Event to Parent") {
                event = "button tapped in ChildView2 \(Int.random(in: 0..<100))"
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .preference(key: ChildPreference.self, value: event)
        }
        .padding()
        .background(.orange)
        .cornerRadius(10.0)
    }
}

#Preview {
    ChildView2()
}
