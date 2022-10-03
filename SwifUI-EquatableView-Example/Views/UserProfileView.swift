//
//  UserProfileView.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 20/09/2022.
//

import SwiftUI

struct UserProfileView: View {
  var user: User
    var body: some View {
      print("User Profile View Body Refreshed ✅")
        return VStack {
          Image(user.userImage)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay {
              Circle().stroke(.mint,
                              lineWidth: 4)
            }
            .overlay {
              Circle()
                .fill(user.isOnline ? .green : .red)
                .frame(width: 30, height: 30)
                .offset(x: 30 ,y: -30)
            }
          
          Text(user.userName)
            .font(.system(size: 20,
                          weight: .medium,
                          design: .rounded))
        }
    }
}

extension UserProfileView: Equatable {
  static func == (lhs: UserProfileView, rhs: UserProfileView) -> Bool {
    lhs.user.isOnline == rhs.user.isOnline
  }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: CreateMockData.shared.user)
    }
}
