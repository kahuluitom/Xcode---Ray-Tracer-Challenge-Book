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
        ScrollView {
        TabView(selection: $selection) {
            let vec = Vector4()
            let proj = ProjectileEnvironment()
            let c = CanvasFrameBuffer()
            let mat = Matrix4()
            
            HStack {
                Spacer()
                VStack (alignment: .leading) {
                    Group {
                        Text(vec.CreateAPoint())
                        Text(vec.CreateAVector())
                        Text(vec.AddingTwoVectors())
                        Text(vec.SubtractingTwoPoints())
                    }
                    Group {
                        Text(vec.SubtractVectorFromPoint())
                        Text(vec.SubtractingTwoVectors())
                        Text(vec.SubtractingVectorFromZeroVector())
                        Text(vec.NegatingAVector())
                    }

                    Group {
                        Spacer()
                        Text(vec.MultiplyVectorByScaler())
                        Text(vec.MultiplyVectorByFraction())
                        Text(vec.DivideVectorByScaler())
                        Text(vec.MagnitudeOfVector())
                    }
                    Group {
                        Text(vec.NormalizeVector())
                        Text(vec.MagnitudeNormalizedVector())
                        Text(vec.DotProductTwoVectors())
                        Text(vec.CrossProductTwoVectors())
                    }
                    Spacer()
                }
                Spacer()
            }
            // .background(Color.secondary)
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
                    Text("10 by 20 canvas with one pixel red.")
                    Image(uiImage: c.CreateACanvas())
                    Text("900 x 550 canvas. Projectile is green.")
                    Image(uiImage: proj.ProjectileTracking())
                    Spacer()
                }
                Spacer()
            }
            
            .tabItem {
                VStack {
                    Text("Canvas Frame Buffer")
                }
            }
            .tag(2)
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Group {
                        Text(mat.ConstructAMatrix())
                        Text(mat.ConstructAMatrix2x2())
                        Text(mat.ConstructAMatrix3x3())
                        Text(mat.MatrixEqualityIdenticalMatrices())
                        Text(mat.MultiplyTwoMatrices())
                        Text(mat.MultiplyByScaler())
                        Text(mat.MultiplyByIdentity())
                        Text(mat.TransposeMatrix())
                        Text(mat.DeterminantOfMatrix2x2())
                    }
                    Group {
                        Text(mat.SubMatrixOfMatrix3())
                        Text(mat.SubMatrixOfMatrix4())
                        Text(mat.CalculateMinorOfMatrix3x3())
                        Text(mat.CalculateACofactor())
                        Text(mat.DeterminantOfMatrix3x3())
                        Text(mat.DeterminantOfMatrix4x4())
                        Text(mat.TestInvertibleMatrix())
                        Text(mat.CalculateInverseMatrix4())
                        Text(mat.MultiplyingProductByInverse())
                    }
                    Spacer()
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tabItem {
                VStack {
                    Text("Matrix Tests")
                }
            }
            .tag(3)
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Group {
                        Text(mat.MultiplyByTranslation())
                        Text(mat.MultiplyByInverseOfTranslation())
                        Text(mat.TranslationDoesNotEffectVectors())
                    }
    
                    Spacer()
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tabItem {
                VStack {
                    Text("Transform Tests")
                }
            }
            .tag(4)
        }
    }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
