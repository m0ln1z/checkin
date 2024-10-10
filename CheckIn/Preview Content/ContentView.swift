import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Добро пожаловать в Check-In приложение")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: SessionView()) {
                    Text("Создать сессию")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: CheckInView()) {
                    Text("Проверить посещаемость")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
