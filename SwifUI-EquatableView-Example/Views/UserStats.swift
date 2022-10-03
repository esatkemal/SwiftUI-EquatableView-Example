//
//  UserStats.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import SwiftUI

struct UserStats: View {
  var stat: UserStat
  
  var body: some View {
    print("User Stats View Body Refreshed ✅")
    return HStack(alignment: .center) {
      createSubStatView(value: stat.followerCount, title: "Followers")
      createSubStatView(value: stat.followingCount, title: "Following")
      createSubStatView(value: stat.totalCountyVisit, title: "Country")
    }
  }
}

@ViewBuilder func createSubStatView(value: Int, title: String) -> some View {
  VStack(alignment: .center) {
    Text("\(value)")
      .font(.title2)
      .fontWeight(.bold)
      .foregroundColor(.primary)
    
    Text(title)
      .foregroundColor(.gray)
  }
}

struct UserStats_Previews: PreviewProvider {
  static var previews: some View {
    UserStats(stat: UserStat(followerCount: 20, followingCount: 40, totalCountyVisit: 2))
  }
}
