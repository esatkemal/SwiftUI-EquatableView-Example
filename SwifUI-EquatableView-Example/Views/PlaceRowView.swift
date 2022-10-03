//
//  PlaceRowView.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import SwiftUI

struct PlaceRowView: View {
  var place: Place
    
  var body: some View {
  print("Place Row View Body Refreshed ✅")
    
   return HStack(spacing: 20) {
      Image(place.countryImage)
        .resizable()
        .scaledToFill()
        .frame(width: 80, height: 50)
        .clipShape(Rectangle())
        .overlay {
          Rectangle().stroke(Color.black,
                             lineWidth: 1)
        }
      
      VStack(alignment: .leading) {
        Text(place.countryName)
          .font(.system(size: 20,
                        weight: .regular,
                        design: .rounded))
        Text("Visited Times: \(place.visitedTimes)")
          .font(.subheadline)
      }
      
      Spacer()
      
      Image(systemName: "chevron.right")
        .font(.system(size: 20,
                      weight: .regular,
                      design: .rounded))
        .foregroundColor(.mint)
    }
    .padding()
  }
}

extension PlaceRowView: Equatable {
  static func == (lhs: PlaceRowView, rhs: PlaceRowView) -> Bool {
    lhs.place.visitedTimes == rhs.place.visitedTimes
  }
}

struct PlaceRowView_Previews: PreviewProvider {
  static var previews: some View {
    PlaceRowView(place: Place(countryName: "usa",
                              countryImage: "usa",
                              visitedTimes: 0))
      .previewLayout(.sizeThatFits)
  }
}
