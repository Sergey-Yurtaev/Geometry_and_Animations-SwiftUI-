//
//  ShapesView.swift
//  Geometry_and_Animations(SwiftUI)
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles(width: 250, height: 250)
                    PathView()
                        .frame(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                }
            }
            .navigationBarTitle("Shapes")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
