import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    
    // Функция для загрузки пользователей из API или базы данных
    func fetchUsers() {
        // Загрузите пользователей и обновите массив users
    }
}
