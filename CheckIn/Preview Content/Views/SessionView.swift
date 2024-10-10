import SwiftUI

struct SessionView: View {
    @StateObject var sessionViewModel = SessionViewModel()
    
    @State private var groupName: String = ""
    
    var body: some View {
        Form {
            TextField("Название группы", text: $groupName)
            Button(action: {
                sessionViewModel.createSession(groupName: groupName, teacherId: 1) // Замените 1 на ID преподавателя
            }) {
                Text("Создать сессию")
            }
        }
        .navigationBarTitle("Создать сессию")
    }
}
