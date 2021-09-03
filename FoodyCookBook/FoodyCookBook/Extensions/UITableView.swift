import UIKit

extension UITableView {

	func registerNib<T: UITableViewCell>(cell: T.Type) {
		register(UINib(nibName: cell.className, bundle: Bundle(for: T.self)), forCellReuseIdentifier: cell.className)
	}

	func register<T: UITableViewCell>(cell: T.Type) {
		register(cell.self, forCellReuseIdentifier: cell.className)
	}

	func dequeue<T: UITableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T {
		dequeueReusableCell(withIdentifier: cell.className, for: indexPath) as! T // swiftlint:disable:this force_cast
	}
}
