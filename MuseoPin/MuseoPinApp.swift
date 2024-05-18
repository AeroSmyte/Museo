//
//  MuseoPinApp.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/16/24.
//

import SwiftUI

@main
struct MuseoPinApp: App {

    @StateObject var museumViewModel = MuseumViewModel()
    var body: some Scene {
        WindowGroup {
            MuseumView()
            .environmentObject(museumViewModel)
        }
    }
}
