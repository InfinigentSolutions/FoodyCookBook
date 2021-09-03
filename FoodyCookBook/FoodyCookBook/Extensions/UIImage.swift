import Alamofire
import UIKit

extension UIImage {

	var containsAlphaComponent: Bool {
		let alphaInfo = cgImage?.alphaInfo

		return (
			alphaInfo == .first ||
				alphaInfo == .last ||
				alphaInfo == .premultipliedFirst ||
				alphaInfo == .premultipliedLast
		)
	}

	var isOpaque: Bool { return !containsAlphaComponent }

	convenience init(view: UIView) {
		UIGraphicsBeginImageContext(view.frame.size)
		view.layer.render(in: UIGraphicsGetCurrentContext()!) // swiftlint:disable:this force_unwrapping
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		self.init(cgImage: image!.cgImage!) // swiftlint:disable:this force_unwrapping
	}

	func scale(size: CGSize) -> UIImage {
		var scaledImageRect = CGRect.zero
		let aspectWidth: CGFloat = size.width / self.size.width
		let aspectHeight: CGFloat = size.height / self.size.height
		let aspectRatio: CGFloat = min(aspectWidth, aspectHeight)
		scaledImageRect.size.width = self.size.width * aspectRatio
		scaledImageRect.size.height = self.size.height * aspectRatio
		scaledImageRect.origin.x = (size.width - scaledImageRect.size.width) / 2
		scaledImageRect.origin.y = (size.height - scaledImageRect.size.height) / 2
		UIGraphicsBeginImageContextWithOptions(size, false, 0)
		draw(in: scaledImageRect)
		let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return scaledImage ?? UIImage()
	}

	func imageAspectScaled(toFit size: CGSize, scale: CGFloat? = nil) -> UIImage {
		assert(size.width > 0 && size.height > 0, "You cannot safely scale an image to a zero width or height")
		let imageAspectRatio = size.width / size.height
		let canvasAspectRatio = size.width / size.height
		var resizeFactor: CGFloat
		if imageAspectRatio > canvasAspectRatio {
			resizeFactor = size.width / size.width
		} else {
			resizeFactor = size.height / size.height
		}
		let scaledSize = CGSize(width: size.width * resizeFactor, height: size.height * resizeFactor)
		let origin = CGPoint(x: (size.width - scaledSize.width) / 2, y: (size.height - scaledSize.height) / 2)
		UIGraphicsBeginImageContextWithOptions(size, false, scale ?? self.scale)
		draw(in: CGRect(origin: origin, size: scaledSize))
		let scaledImage = UIGraphicsGetImageFromCurrentImageContext() ?? self
		UIGraphicsEndImageContext()
		return scaledImage
	}

	func imageAspectScaled(toFill size: CGSize, scale: CGFloat? = nil) -> UIImage {
		assert(size.width > 0 && size.height > 0, "You cannot safely scale an image to a zero width or height")
		let imageAspectRatio = size.width / size.height
		let canvasAspectRatio = size.width / size.height
		var resizeFactor: CGFloat
		if imageAspectRatio > canvasAspectRatio {
			resizeFactor = size.height / size.height
		} else {
			resizeFactor = size.width / size.width
		}
		let scaledSize = CGSize(width: size.width * resizeFactor, height: size.height * resizeFactor)
		let origin = CGPoint(x: (size.width - scaledSize.width) / 2, y: (size.height - scaledSize.height) / 2)
		UIGraphicsBeginImageContextWithOptions(size, isOpaque, scale ?? self.scale)
		draw(in: CGRect(origin: origin, size: scaledSize))
		let scaledImage = UIGraphicsGetImageFromCurrentImageContext() ?? self
		UIGraphicsEndImageContext()
		return scaledImage
	}
}
