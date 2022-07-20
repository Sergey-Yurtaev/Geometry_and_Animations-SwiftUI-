//
//  TabViews.swift
//  Geometry_and_Animations(SwiftUI)
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("ContentView")
                }
            
            ShapesView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Shapes View")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
