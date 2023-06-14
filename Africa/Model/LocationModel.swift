//
//  LocationModel.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/13/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Hashable, Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
