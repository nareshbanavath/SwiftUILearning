//
//  ParentView.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 25/05/24.
//

import SwiftUI

struct ParentView: View {
    @State var childText : String = ""
    var body: some View {
        VStack {
            
            Text("This Text Came From ChildView: \(childText)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .font(.title2)
           
            Spacer()
            ChildView1()
                .padding(.vertical, 50)
            Spacer()
        }
        .onPreferenceChange(ChildPreference.self, perform: { value in
            childText = value
        })

    }
}

#Preview {
    ParentView()
}
