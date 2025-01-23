
import Foundation

struct Person: Codable {
  var name: String
  var lastTimeFirst: Date?
  var lastPosition: UInt?
  var team: Team
}
