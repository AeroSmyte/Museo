//
//  MuseumView.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/17/24.
//

import SwiftUI
import MapKit

struct MuseumView: View {
  
  @EnvironmentObject private var museumVM : MuseumViewModel
  
  var body: some View {
    ZStack {
      
      Map(coordinateRegion: $museumVM.mapRegion)
        .ignoresSafeArea()
      
      VStack(alignment: .center, spacing: 0) {
        Text(museumVM.currentMuseumLocation.name + ", " + museumVM.currentMuseumLocation.cityName)
          .font(.title2)
          .fontWeight(.heavy)
          .lineLimit(1)
          .minimumScaleFactor(0.5) // Allow text to scale down to 50% of its original size
          .padding(.horizontal) // Apply padding on the horizontal axis to prevent truncation
          .foregroundColor(.primary)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(.thickMaterial)
          .cornerRadius(30)
          .padding()
        
        
        
        Spacer()
        
        
        //        HStack(alignment: .center) {
        MenuButton(museumVM: museumVM,
                   imageName: "line.3.horizontal",
                   tappedImageName: "arrow.down",
                   buttonTitle: "My Museums",
                   action: {
          museumVM.showMuseumList()
        })
      }
    }
  }
}

#Preview {
  MuseumView()
    .environmentObject(MuseumViewModel())
}

struct MenuButton : View{
  
  var museumVM : MuseumViewModel
  var imageName: String
  var tappedImageName: String
  var buttonTitle: String
  var action: () -> Void
  
  
  @State private var isTapped: Bool = false
  
  
  var body : some View {
//    VStack {
      Button {
        isTapped.toggle()
        action()
        
      } label: {
        Text(buttonTitle.uppercased())
          .fontWeight(.bold)
          .kerning(4)
          .font(.title2)
          .frame(height: 40)
          .frame(maxWidth: .infinity)
          .animation(.none, value: museumVM.currentMuseumLocation) // referencing the map location, if it changes we change the name
          .overlay(alignment: .leading) {
            Image(systemName: museumVM.isMuseumListShowing ? tappedImageName : imageName)
              .font(.title)
              .padding()
              .rotationEffect(Angle(degrees: isTapped ? 0 : 180))
          }
          .padding()
          .foregroundColor(.white)
          .background(.accent)
          .cornerRadius(40)
        
      }
      .padding()
      if museumVM.isMuseumListShowing {
        MuseumListView()
      }
//    }
  }
}

