import UIKit
import CoreImage.CIFilterBuiltins

class QRCodeService {
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue(0.5, forKey: "inputCorrectionLevel")

            if let output = filter.outputImage {
                let scaleX = 200 / output.extent.size.width
                let scaleY = 200 / output.extent.size.height
                let transformedImage = output.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))

                return UIImage(ciImage: transformedImage)
            }
        }

        return nil
    }
}
