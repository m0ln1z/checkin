import Foundation

class AttendanceViewModel: ObservableObject {
    @Published var attendanceRecords: [Attendance] = []
    
    // Функция для проверки посещаемости
    func checkIn(sessionId: Int, studentId: Int) {
        let newAttendance = Attendance(id: 0, sessionId: sessionId, studentId: studentId, checkInTime: Date())
        attendanceRecords.append(newAttendance)
        
        // Сохраните запись посещаемости в API или базе данных
    }
}
