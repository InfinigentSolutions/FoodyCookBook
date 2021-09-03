import UIKit

extension UIView {

	var safeTopAnchor: NSLayoutYAxisAnchor {
		safeAreaLayoutGuide.topAnchor
	}

	var safeBottomAnchor: NSLayoutYAxisAnchor {
		safeAreaLayoutGuide.bottomAnchor
	}

	func anchors(top: NSLayoutYAxisAnchor?, topPad: CGFloat, bottom: NSLayoutYAxisAnchor?, bottomPad: CGFloat, left: NSLayoutXAxisAnchor?, leftPad: CGFloat, right: NSLayoutXAxisAnchor?, rightPad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		if let top = top {
			topAnchor.constraint(equalTo: top, constant: topPad).isActive = true
		}
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: bottomPad).isActive = true
		}
		if let left = left {
			leftAnchor.constraint(equalTo: left, constant: leftPad).isActive = true
		}
		if let right = right {
			rightAnchor.constraint(equalTo: right, constant: rightPad).isActive = true
		}
	}
}
