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
        
        
        HStack(alignment: .center) {
          MenuButton(imageName: "line.3.horizontal",
                     tappedImageName: "arrow.up",
                     buttonTitle: "My Museos",
                     buttonType: .Add)
          
          MenuButton(imageName: "plus",
                     tappedImageName: "plus.circle.fill",
                     buttonTitle: "Add Museo",
                     buttonType: .View)
          
        }
        
      }
      
      
      
    }
  }
}

#Preview {
  MuseumView()
    .environmentObject(MuseumViewModel())
}

enum ButtonType {
  case Add, View
}

struct MenuButton : View{
  
  var imageName: String
  var tappedImageName: String
  var buttonTitle: String
  var buttonType: ButtonType
  
  @State private var isTapped: Bool = false
  
  
  var body : some View {
    VStack {
      Button {
        isTapped.toggle()

      } label: {
        HStack {
          Image(systemName: isTapped ? tappedImageName : imageName)
            .font(.title)
            .rotationEffect(Angle(degrees: isTapped ? 0 : 180))
          Text(buttonTitle)
            .fontWeight(.semibold)
            .font(.title3)
          
          
        }
        
        .padding()
        .foregroundColor(.white)
        .background(.accent)
        .cornerRadius(40)
        .frame(height: 55)
    }
      }
//    if buttonType == .View {
//      MuseumListView()
//    }
    
  }
}

