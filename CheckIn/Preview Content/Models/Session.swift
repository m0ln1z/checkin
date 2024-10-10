import Foundation

struct Session: Identifiable, Codable {
    var id: Int
    var groupName: String
    var teacherId: Int
    var sessionStart: Date
    var qrCode: String
}
