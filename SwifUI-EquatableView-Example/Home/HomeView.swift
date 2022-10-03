//
//  HomeView.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import SwiftUI

struct HomeView: View {
  
  @State var user = CreateMockData.shared.user
  @State var places = CreateMockData.shared.places
  
  @State var counter: Int = 0
  @State var visitCounter: Int = 1
  @State var userStatus: Bool = false
  
  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        UserHeaderView(user: user)
          .padding(.leading)
        
        Text("Place to Visit")
          .font(.system(size: 25,
                        weight: .bold,
                        design: .rounded))
          .padding()
        ScrollView {
          ForEach(places) {place in
            PlaceRowView(place: place)
              .equatable()
          }
        }
      }
      .navigationTitle("Profile")
      .toolbar {
        
        Button("User Stats Upt") {
          user = CreateMockData.shared.changeUserStat()
        }
        Button("Visit Upt.") {
          places = CreateMockData.shared.updateLastCountryVisit(places: &places, visitTime: visitCounter)
          visitCounter += 1
        }
        
        Button("Status Upt.") {
          userStatus.toggle()
          user = CreateMockData.shared.updateUserStatus(userStatus: userStatus)
        }
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}

