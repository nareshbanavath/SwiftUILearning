//
//  ChildView1.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 25/05/24.
//

import SwiftUI

struct ChildView1: View {
    @State var event : String = ""
    var body: some View {
        VStack {
            Text("I am in ChildeView1")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Button("Send Event to Parent") {
                event = "button tapped in ChildView1 === \(Int.random(in: 0..<100))"
            }
            .buttonStyle(.borderedProminent)
            .fontWeight(.semibold)
            .font(.title2)
            .tint(.green)
            .preference(key: ChildPreference.self, value: event)
            ChildView2()
                .padding()
        }
        .padding()
        .background(.gray)
        .cornerRadius(10.0)
    }
}

#Preview {
    ChildView1()
}


extension Sequence where Element == Int {
    func sum() -> Int {
        return reduce(0, +)
    }
}


