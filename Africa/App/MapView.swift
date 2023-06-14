//
//  MapView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import MapKit
import SwiftUI

struct MapView: View {
    var locations: [NationalParkLocation]
    @State var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        return mapRegion
    }()

    var body: some View {
        // MARK: - 1 BASIC MAP

//        Map(coordinateRegion: $region)

        // MARK: - 2 ADVANCE MAP

        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // OPTION 1: MARKER: NEW STYLE (always static)
//            MapMarker(coordinate: item.location, tint: .accentColor)
            // OPTION 2: BASIC ANNOTATION
//            MapAnnotation(coordinate: item.location, content: {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }) //: ANNOTATION
          })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locations: locations)
    }
}
