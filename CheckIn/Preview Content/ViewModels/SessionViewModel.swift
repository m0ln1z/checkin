import Foundation

class SessionViewModel: ObservableObject {
    @Published var sessions: [Session] = []
    
    // Функция для создания новой сессии
    func createSession(groupName: String, teacherId: Int) {
        let newSession = Session(id: 0, groupName: groupName, teacherId: teacherId, sessionStart: Date(), qrCode: generateQRCode())
        sessions.append(newSession)
        
        // Сохраните сессию в API или базе данных
    }
    
    // Генерация QR-кода
    func generateQRCode() -> String {
        // Логика генерации QR-кода
        return "QR_CODE_DATA"
    }
}
