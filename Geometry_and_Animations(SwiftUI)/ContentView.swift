//
//  ContentView.swift
//  Geometry_and_Animations(SwiftUI)
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showShape = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    showShape.toggle()
                }
            }) {
                HStack {
                    Text(showShape ? "Hide Shape" : "Show Shape")
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showShape ? 0 : 180))
//                        .animation(.easeInOut)
                }
            }
            
            Spacer()
            
            if showShape {
                GradientRectangles(width: 250, height: 250)
                    .offset(x: showShape ? 0 : -UIScreen.main.bounds.width)
                    .animation(.interpolatingSpring(
                        mass: 1,
                        stiffness: 200,
                        damping: 10,
                        initialVelocity: 0)
                    )
                    .transition(.transition)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

