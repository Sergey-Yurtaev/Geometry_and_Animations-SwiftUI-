//
//  PathView.swift
//  Geometry_and_Animations(SwiftUI)
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: middle, y: nearLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3.0,
                    dash: [geometry.size.height / 20]
                )
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(0.20)
                .offset(x: -geometry.size.width / 7.25)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
