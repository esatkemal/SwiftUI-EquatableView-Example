//
//  Place.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import Foundation

struct Place: Identifiable {
  var id = UUID().uuidString
  
  var countryName: String
  var countryImage: String
  var visitedTimes: Int
}
