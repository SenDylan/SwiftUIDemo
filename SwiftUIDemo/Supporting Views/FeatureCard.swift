//
//  FeatureCard.swift
//  SwiftUIDemo
//
//  Created by sdy on 2019/10/12.
//  Copyright © 2019 JDJR. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {

    var landmark: Landmark

    var body: some View {
        landmark.featureImage?.resizable().aspectRatio(3 / 2, contentMode: .fit).overlay(self)
    }
}

struct TextOverlay: View {

    var landmark: Landmark

    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
            colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
        }
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: landmarkData[0])
    }
}
