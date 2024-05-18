//
//  Location.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/16/24.
//

import Foundation
import MapKit

struct Museum: Identifiable {
  // TODO: determine if a unique ID is necessary or if this string works
  var id: String {
    // name: Coliseum
    // cityName: Rome
    // id: ColiseumRome
     name + cityName
  }

  var name: String
  var cityName: String
  var coordinates: CLLocationCoordinate2D
  var dateVisited: Date
  var description: String
  var exhibits: [Exhibit]
}
