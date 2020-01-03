//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by sdy on 2019/10/9.
//  Copyright © 2019 JDJR. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var landmark: Landmark
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: landmark.locationCoordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[0])
    }
}
