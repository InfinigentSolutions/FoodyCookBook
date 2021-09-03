import NotificationBannerSwift
import UIKit

class Banner: UIViewController {

    static func error(message: String) {
        let size = CGSize(width: 22, height: 22)
        let image = UIImage(systemName: "exclamationmark.circle.fill")?.scale(size: size).withTintColor(.white)
        let view = Banner.view(leftImage: image ?? UIImage(), message: message, color1: R.color.red() ?? .red, color2: .white)
        let banner = NotificationBanner(customView: view)
        banner.onTap = {
            banner.dismiss()
        }
        banner.onSwipeUp = {
            banner.dismiss()
        }
        banner.haptic = .light
        banner.show()
    }

    static func warning(message: String) {
        let size = CGSize(width: 22, height: 22)
        let image = UIImage(systemName: "exclamationmark.triangle")?.scale(size: size).withTintColor(.white)
        let view = Banner.view(leftImage: image ?? UIImage(), message: message, color1: R.color.orange() ?? .orange, color2: .white)
        let banner = NotificationBanner(customView: view)
        banner.onTap = {
            banner.dismiss()
        }
        banner.onSwipeUp = {
            banner.dismiss()
        }
        banner.haptic = .light
        banner.show()
    }

    static func noConnection(message: String) {
        let size = CGSize(width: 22, height: 22)
        let image = UIImage(systemName: "exclamationmark.circle.fill")?.scale(size: size).withTintColor(.white)
        let view = Banner.view(leftImage: image ?? UIImage(), message: message, color1: R.color.red() ?? .red, color2: .white)
        let banner = NotificationBanner(customView: view)
        banner.onTap = {
            banner.dismiss()
        }
        banner.onSwipeUp = {
            banner.dismiss()
        }
        banner.haptic = .light
        banner.show()
    }

    static func success(message: String) {
        let size = CGSize(width: 22, height: 22)
        let image = UIImage(systemName: "checkmark.circle.fill")?.scale(size: size).withTintColor(.white)
        let view = Banner.view(leftImage: image ?? UIImage(), message: message, color1: R.color.green() ?? .green, color2: .white)
        let banner = NotificationBanner(customView: view)
        banner.onTap = {
            banner.dismiss()
        }
        banner.onSwipeUp = {
            banner.dismiss()
        }
        banner.haptic = .light
        banner.show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            banner.dismiss()
        }
    }

    static func view(leftImage: UIImage, message: String, color1: UIColor, color2: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color1
        let toastLabel: UILabel = {
            let label = UILabel()
            label.textColor = color2
            label.textAlignment = .left
            label.text = message
            label.numberOfLines = 2
            label.lineBreakMode = .byWordWrapping
            label.alpha = 1
            return label
        }()

        let size = CGSize(width: 22, height: 22)
        let image = UIImageView(image: leftImage.scale(size: size))
        image.contentMode = .scaleAspectFit

        view.addSubview(image)
        view.addSubview(toastLabel)
        image.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 15, right: nil, rightPad: 0)
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        if UIDevice.current.userInterfaceIdiom == .pad {
            toastLabel.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: image.rightAnchor, leftPad: 10, right: nil, rightPad: 0)
            toastLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        } else {
            toastLabel.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: image.rightAnchor, leftPad: 10, right: view.rightAnchor, rightPad: -UIScreen.main.bounds.width * 0.08)
            toastLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
        return view
    }
}
