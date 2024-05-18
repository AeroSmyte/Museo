//
//  MuseumListView.swift
//  MuseoPin
//
//  Created by Lexi McQueen on 5/18/24.
//

import SwiftUI

struct MuseumListView: View {
  @EnvironmentObject var museumVM : MuseumViewModel
  
    var body: some View {
      List {
        ForEach(museumVM.museums) { museum in
          Button {
            // want to go to that location
            museumVM.showNextLocation(museum: museum)
          } label: {
            ListRowView(museum: museum)
          }
          .listRowBackground(Color.clear)
          .padding(.vertical, 4)
        }
      }
      
    }
}

#Preview {
    MuseumListView()
    .environmentObject(MuseumViewModel())
}


struct ListRowView: View {
  
  var museum: Museum
  
  var body: some View {
    HStack {
      Image(systemName: "mappin.and.ellipse")
        .resizable()
        .scaledToFill()
        .frame(width: 30, height: 30)
      
      VStack(alignment: .leading) {
        Text(museum.name)
          .font(.headline)
          .lineLimit(1)

        Text(museum.cityName)
          .font(.subheadline)
          .foregroundStyle(.secondary)
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      
      Spacer()
      
      ZStack {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
          .frame(width: 30, height: 30)
        Text(String(museum.exhibits.count))
          .foregroundStyle(Color.white)
        
      }
      
    }
  }
}
