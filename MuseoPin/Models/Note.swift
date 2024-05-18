//
//  Note.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/17/24.
//

import Foundation

// Each note for a piece of art
struct Note: Identifiable, Codable {
  var id = UUID().uuidString
  var text: String
  var dateCreated: Date
}
