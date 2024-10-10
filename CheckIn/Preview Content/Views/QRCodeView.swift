import SwiftUI

struct QRCodeView: View {
    @State private var qrCodeImage: UIImage?
    
    var body: some View {
        if let qrCodeImage = qrCodeImage {
            Image(uiImage: qrCodeImage)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        } else {
            Text("QR-код не создан")
        }
    }
}
