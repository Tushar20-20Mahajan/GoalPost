import Foundation
import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = UIColor(hexString: "#6DBC63") // Hexadecimal value for green
    }
    
    func setDeselectedColor() {
        self.backgroundColor = UIColor(hexString: "#B2DDAF") // Hexadecimal value for light green
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = (int >> 8 * 2, int >> 8 * 1 & 0xFF, int & 0xFF)
            a = 255
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
            a = 255
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
