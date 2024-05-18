//
//  MusuemData.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/16/24.
//

import Foundation
import UIKit
import MapKit

class MuseumsDataService {
  static let museums : [Museum] = [
    Museum(
      name: "The Art Institute of Chicago",
      cityName: "Chicago, IL",
      coordinates: CLLocationCoordinate2D(latitude: 41.8743, longitude: -87.6210),
      dateVisited: Date(),
      description: "The largest museum in Chicago.",
      exhibits: [
        Exhibit(
          title: "Nighthawks",
          artist: "Edward Hopper",
          year: "1942",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(),
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "A masterpiece of urban isolation.",
              dateCreated: Date()
            )
          ]
        ),
        
        Exhibit(
          title: "A Sunday on La Grande Jatte",
          artist: "George Sourat",
          year: "1884",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(),
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "This is Seurat’s final study for his monumental painting of Parisians at leisure on an island in the Seine ",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "Coliseum",
      cityName: "Rome",
      coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
      dateVisited: Date(),
      description: "An ancient amphitheater in the center of Rome, Italy.",
      exhibits: [
        Exhibit(
          title: "Coliseum Arena",
          artist: "Unknown",
          year: "80 AD",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "A monumental structure with a rich history.",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "Louvre Museum",
      cityName: "Paris",
      coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
      dateVisited: Date(),
      description: "The world's largest art museum and a historic monument in Paris, France.",
      exhibits: [
        Exhibit(
          title: "Mona Lisa",
          artist: "Leonardo da Vinci",
          year: "1503",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "One of the most famous paintings in the world.",
              dateCreated: Date()
            ),
            Note(
              text: "One of the most famous paintings in the world.",
              dateCreated: Date()
            ),
            Note(
              text: "One of the most famous paintings in the world.",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "Metropolitan Museum of Art",
      cityName: "New York",
      coordinates: CLLocationCoordinate2D(latitude: 40.7794, longitude: -73.9632),
      dateVisited: Date(),
      description: "The largest art museum in the United States.",
      exhibits: [
        Exhibit(
          title: "Washington Crossing the Delaware",
          artist: "Emanuel Leutze",
          year: "1851",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "Depicts General George Washington during the American Revolutionary War.",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "British Museum",
      cityName: "London",
      coordinates: CLLocationCoordinate2D(latitude: 51.5194, longitude: -0.1270),
      dateVisited: Date(),
      description: "A public institution dedicated to human history, art, and culture.",
      exhibits: [
        Exhibit(
          title: "Rosetta Stone",
          artist: "Ancient Egyptians",
          year: "196 BC",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "A key to understanding Egyptian hieroglyphs.",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "State Hermitage Museum",
      cityName: "Saint Petersburg",
      coordinates: CLLocationCoordinate2D(latitude: 59.9398, longitude: 30.3146),
      dateVisited: Date(),
      description: "A museum of art and culture in Saint Petersburg, Russia.",
      exhibits: [
        Exhibit(
          title: "The Return of the Prodigal Son",
          artist: "Rembrandt",
          year: "1669",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "One of the greatest works by Rembrandt.",
              dateCreated: Date()
            )
          ]
        )
      ]
    ),
    Museum(
      name: "Prado Museum",
      cityName: "Madrid",
      coordinates: CLLocationCoordinate2D(latitude: 40.4138, longitude: -3.6921),
      dateVisited: Date(),
      description: "The main Spanish national art museum, located in central Madrid.",
      exhibits: [
        Exhibit(
          title: "Las Meninas",
          artist: "Diego Velázquez",
          year: "1656",
          images: [
            ExhibitImage(
              id: UUID(),
              imageData: Data(), // Placeholder for image data
              dateTaken: Date()
            )
          ],
          notes: [
            Note(
              text: "A complex and enigmatic composition.",
              dateCreated: Date()
            )
          ]
        )
      ]
    )
    
    
  ]
}
