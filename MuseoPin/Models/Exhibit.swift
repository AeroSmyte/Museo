//
//  Exhibit.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/17/24.
//

import Foundation

//
struct ExhibitImage: Identifiable, Codable {
  var id: UUID
  var imageData: Data
  var dateTaken: Date
}

struct Exhibit: Identifiable, Codable {
  var id: String {
    title + year
  }
  var title: String
  var artist: String
  var year: String
  var images: [ExhibitImage]
  var notes: [Note]
}
