import Foundation

struct User: Identifiable, Codable {
    var id: Int
    var name: String
    var role: String = "student"
    var email: String
}
var user = User(id: 1, name: "Тест Тестович", role: student, email:"ivan.tester@gmail.com" )

