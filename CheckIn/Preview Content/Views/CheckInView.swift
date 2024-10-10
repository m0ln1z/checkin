import SwiftUI

struct CheckInView: View {
    @StateObject var attendanceViewModel = AttendanceViewModel()
    
    var body: some View {
        if (UserViewModel.students.isEmpty) {
            Text("Список студентов пуст")
        } else {
            List {
                ForEach(UserViewModel.students) { student in
                    HStack {
                        Text(student.fullName)
                        Spacer()
                        if student.isVisited {
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
        }
        Text("Проверка посещаемости")
    }
}
