import Foundation

struct AttendanceRecord: Identifiable {
    let id: UUID
    let studentName: String
    let timestamp: Date
}
