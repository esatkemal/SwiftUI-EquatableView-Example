//
//  CreateMockData.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import Foundation

final class CreateMockData {
  static var shared: CreateMockData = CreateMockData()
  /// Mock User
  
  var user: User {
    User(userName: "John Doe",
         userImage: "user1",
         stat: UserStat(followerCount: 2340,
                        followingCount: 30,
                        totalCountyVisit: 3), isOnline: false)
  }
  
  /// Mock Places
  
  var places: [Place] {
    [
      Place(countryName: "United States of America", countryImage: "usa", visitedTimes: 0),
      Place(countryName: "Poland", countryImage: "poland", visitedTimes: 2),
      Place(countryName: "Italy", countryImage: "italy", visitedTimes: 1),
      Place(countryName: "Scotland", countryImage: "scotland", visitedTimes: 0),
      Place(countryName: "France", countryImage: "france", visitedTimes: 0),
      Place(countryName: "Japan", countryImage: "japan", visitedTimes: 0),
      Place(countryName: "Sweden", countryImage: "sweden", visitedTimes: 0),
      Place(countryName: "Swiss", countryImage: "swiss", visitedTimes: 1),
      Place(countryName: "Portugal", countryImage: "portugal", visitedTimes: 4),
      Place(countryName: "Denmark", countryImage: "denmark", visitedTimes: 3),
      Place(countryName: "Scotland", countryImage: "scotland", visitedTimes: 2),
      Place(countryName: "France", countryImage: "france", visitedTimes: 0),
      Place(countryName: "Japan", countryImage: "japan", visitedTimes: 0),
      Place(countryName: "Sample Country 1", countryImage: "usa", visitedTimes: 0),
      Place(countryName: "Sample Country 2", countryImage: "poland", visitedTimes: 0),
      Place(countryName: "Sample Country 3", countryImage: "italy", visitedTimes: 0),
      Place(countryName: "Sample Country 4", countryImage: "scotland", visitedTimes: 0),
      Place(countryName: "Sample Country 5", countryImage: "france", visitedTimes: 0),
      Place(countryName: "Sample Country 6", countryImage: "japan", visitedTimes: 0),
      Place(countryName: "Sample Country 7", countryImage: "sweden", visitedTimes: 0),
      Place(countryName: "Sample Country 8", countryImage: "usa", visitedTimes: 0),
      Place(countryName: "Sample Country 9", countryImage: "poland", visitedTimes: 0),
      Place(countryName: "Sample Country 10", countryImage: "italy", visitedTimes: 0),
      Place(countryName: "Sample Country 11", countryImage: "scotland", visitedTimes: 0),
      Place(countryName: "Sample Country 12", countryImage: "france", visitedTimes: 0),
      Place(countryName: "Sample Country 13", countryImage: "japan", visitedTimes: 0),
      Place(countryName: "Sample Country 14", countryImage: "sweden", visitedTimes: 0),
      Place(countryName: "Sample Country 15", countryImage: "usa", visitedTimes: 0),
      Place(countryName: "Sample Country 16", countryImage: "poland", visitedTimes: 0),
      Place(countryName: "Sample Country 17", countryImage: "italy", visitedTimes: 0),
      Place(countryName: "Sample Country 18", countryImage: "scotland", visitedTimes: 0),
      Place(countryName: "Sample Country 19", countryImage: "france", visitedTimes: 0),
      Place(countryName: "Sample Country 20", countryImage: "japan", visitedTimes: 0),
      Place(countryName: "Sample Country 21", countryImage: "sweden", visitedTimes: 0)
    ]
    
  }
  
  /// Simulate User Status Update
  
  func updateUserStatus(userStatus: Bool) -> User {
    return User(userName: "John Doe",
                userImage: "user1",
                stat: UserStat(followerCount: 2340,
                               followingCount: 30,
                               totalCountyVisit: 3), isOnline: userStatus)
  }
  
  /// Simulate User Stats Update
  
  func changeUserStat() -> User {
    return User(userName: "John Doe",
                userImage: "user1",
                stat: UserStat(followerCount: Int.random(in: 0...2000),
                               followingCount: Int.random(in: 0...2000),
                               totalCountyVisit: Int.random(in: 0...2000)), isOnline: false)
  }
  
  /// Simulate Last Country Visit Tine Update
  
  func updateLastCountryVisit( places: inout [Place], visitTime: Int) -> [Place] {
    places[30].visitedTimes = visitTime
    return places
  }
}
