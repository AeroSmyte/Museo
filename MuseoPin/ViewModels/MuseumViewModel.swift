//
//  MuseumViewModel.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/17/24.
//

import Foundation
import MapKit
import SwiftUI

class MuseumViewModel: ObservableObject {
  
  @Published var museums: [Museum]
  
  @Published var mapRegion = MKCoordinateRegion() // takes a span and a coordinate to hone in on
  
  // when the new location is set, update the map here which will update the region as well
  @Published var currentMuseumLocation : Museum {
    didSet {
      updateMapRegion(museum: currentMuseumLocation)
    }
  }
  
  var mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
  
  var defaultMuseumLocation = Museum(
    name: "Chicago Arts Institute",
    cityName: "Chicago, IL",
    coordinates: CLLocationCoordinate2D(latitude: 41.8743, longitude: -87.6210),
    dateVisited: Date(),
    description: "The largest museum in Chicago.",
    exhibits: [])
  
  func showNextLocation(museum: Museum) {
    withAnimation(.easeInOut) {
      // update the map region to the museum passed in
      currentMuseumLocation = museum
      isMuseumListShowing = false
    }
  }
  
  private func updateMapRegion(museum: Museum) {
    withAnimation(.easeInOut) {
      mapRegion.center = museum.coordinates
      mapRegion.span = mapSpan
    }
  }
  
  // showing museo list view or not
  
  @Published var isMuseumListShowing: Bool = false
  
  // with an animation toggle the Bool isMuseumListShowing to true
  func showMuseumList() {
    withAnimation {
      isMuseumListShowing = !isMuseumListShowing
    }
  }
 
  
  // When we initialize our view model we have an array of museums,
  init() {
    let museums = MuseumsDataService.museums
    self.museums = museums
    
    guard let firstMuseum = museums.first else {
      // this is in case there is no museums in the list. Sets to default
      print("The list of locations is empty!")
      self.currentMuseumLocation = defaultMuseumLocation
      return
    }
    
    self.currentMuseumLocation = firstMuseum
    self.updateMapRegion(museum: currentMuseumLocation)
  }
}
