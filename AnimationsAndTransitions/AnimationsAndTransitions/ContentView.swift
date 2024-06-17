//
//  ContentView.swift
//  AnimationsAndTransitions
//
//  Created by Naresh Banavath on 15/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var showImage : Bool = false
    var body: some View {
        VStack {
            Button(showImage ? "Make Image Disappear" : "Make Image Appear") {
                withAnimation {
                    showImage.toggle()
                }
               
            }
            .buttonStyle(ScalingButtonStyle())
            if showImage {
                Image(systemName: "tree.fill")
                    .font(.system(size: 170))
                    .foregroundStyle(.green)
                    .frame(height: 300)
//                    .transition(.scale.combined(with: .opacity))
                    .transition(.asymmetric(insertion: .push(from: .bottom), removal: .scale.combined(with: .opacity)))
                   
            }
            
        }
   
                
        
        /// `Observations :- `
        /// 1.We can combile mutilple aniamtion blocks. 2. if we put animatinon to `nil` then the animation written before its modifier will not animate
        /// 2. `transition` does not work if do not put state variable in `withAnimation` block.
    }
}

#Preview {
    ContentView()
}

struct ScalingButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .cornerRadius(15.0)
            .font(.headline)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .animation(.linear(duration: 0.25), value: configuration.isPressed)
    }
}


