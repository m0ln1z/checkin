import Foundation

struct Attendance: Identifiable, Codable {
    var id: Int
    var sessionId: Int
    var studentId: Int
    var checkInTime: Date
}
