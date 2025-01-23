//
//  Team.swift
//  StandupTools
//
//  Created by Francis Anthony Breidenbach on 12/17/24.
//

import Foundation

struct Team: Codable {
  var name: String
  var revision: Int?
  var lastToGoFirst: String?
  var people = [Person]()
}
