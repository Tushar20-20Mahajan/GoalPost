import Foundation
import UIKit

extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeFrame(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }

    @objc func keyboardWillChangeFrame(_ notification: Notification) {
        // Handle the keyboard frame change here
        guard let userInfo = notification.userInfo,
              let startingFrame = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue,
              let endingFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
              let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double,
              let curveValue = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else {
            return
        }

        let options = UIView.AnimationOptions(rawValue: curveValue << 16)
        let deltaY = endingFrame.origin.y - startingFrame.origin.y

        UIView.animate(withDuration: duration, delay: 0.0, options: options, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: deltaY)
        }, completion: nil)
    }
}

