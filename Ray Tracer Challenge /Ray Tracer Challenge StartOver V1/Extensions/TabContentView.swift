//
//  TabContentView.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import SwiftUI
struct TabContentView: View {
    
    @State private var selection = 0

    var body: some View {
        
        TabView(selection: $selection) {
            let vec = Vector4()
            let proj = ProjectileEnvironment()
            let c = CanvasFrameBuffer()
            
            HStack {
                Spacer()
                VStack (alignment: .leading) {
                    Group {
                        Spacer()
                        Text(vec.CreateAPoint())
                            .padding(1)
                        Text(vec.CreateAVector())
                            .padding(1)
                        Text(vec.AddingTwoVectors())
                            .padding(1)
                        Text(vec.SubtractingTwoPoints())
                            .padding(1)
                        Text(vec.SubtractVectorFromPoint())
                            .padding(1)
                        Text(vec.SubtractingTwoVectors())
                            .padding(1)
                        Text(vec.SubtractingVectorFromZeroVector())
                            .padding(1)
                        Text(vec.NegatingAVector())
                            .padding(1)
                        Spacer()
                    }
                    Divider()
                    Group {
                        Spacer()
                        Text(vec.MultiplyVectorByScaler())
                            .padding(1)
                        Text(vec.MultiplyVectorByFraction())
                            .padding(1)
                        Text(vec.DivideVectorByScaler())
                            .padding(1)
                        Text(vec.MagnitudeOfVector())
                            .padding(1)
                        Text(vec.NormalizeVector())
                            .padding(1)
                        Text(vec.MagnitudeNormalizedVector())
                            .padding(1)
                        Text(vec.DotProductTwoVectors())
                            .padding(1)
                        Text(vec.CrossProductTwoVectors())
                            .padding(1)
                        Spacer()
                    }
                }
                Spacer()
            }
            .background(Color.secondary)
            .tabItem {
                VStack {
                    Text("Vector - Point Tests")
                }
            }
            .tag(0)
            
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text(proj.RunProjectile())
                    Spacer()
                }
                Spacer()
            }
            .tabItem {
                VStack {
                    Text("Projectile Environment Test")
                }
            }
            .tag(1)
            
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("10 by 20 canvas with one pixel red")
                    Image(uiImage: c.CreateACanvas())
                    Spacer()
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tabItem {
                VStack {
                    Text("Canvas Frame Buffer")
                }
            }
            .tag(2)
        }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
