//
//  UserModel.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import Foundation

struct User {
  var userName: String
  var userImage: String
  var stat: UserStat
  var isOnline: Bool
}

struct UserStat {
  var followerCount: Int
  var followingCount: Int
  var totalCountyVisit: Int
}
