//
//  ContentView.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/24/21.
//

import SwiftUI

struct ContentView: View {
    let sp = Sphere()
    let ray = Ray()
    
    var body: some View {
        VStack {
            Text(sp.RaySphereTangent())
            Text(sp.RaySphereMisses())
            Text(sp.RayOriginatesInsideSphere())
            Text(sp.RayOriginatesPastSphere())
            Text(sp.IdentifyingHits())
            Text(sp.IdentifyingHits2())
            Text(sp.IdentifyingHits3())
        }
        Divider()
        VStack {
            Text(ray.TranslateARay())
            Text(ray.ScaleARay())
            Text(sp.SphereChangeTransformation())
            Text(sp.IntersectAScaledSphere())
            Image(nsImage: ray.CastRedShadowSphere())
            Image(nsImage: ray.CastRedShadowSphereShrinkY())
            Image(nsImage: ray.CastRedShadowSphereShrinkYRotate())
        }
        Divider()
        VStack {
            Text(sp.TestSphereNormalX())
            Text(sp.TestSphereNormalY())
            Text(sp.TestSphereNormalZ())
            Text(sp.TestSphereNormalNonAxial())
            Text(sp.TestTranslatedSphereNormal())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
