import Alamofire
import Foundation

class ReachabilityManager {

	// MARK: Open

	open var isReachable: Bool {
		let manager = NetworkReachabilityManager()
		return manager?.isReachable ?? false
	}

	// MARK: Public

	public func isServerReachable() -> Bool {
		let url = URL(string: APIClient.baseURL.absoluteString)
		let semaphore = DispatchSemaphore(value: 0)
		var success = false
		let task = urlSession.dataTask(with: url!) { _, _, error in // swiftlint:disable:this force_unwrapping
			if error != nil {
				success = false
			} else {
				success = true
			}
			semaphore.signal()
		}

		task.resume()
		semaphore.wait()

		return success
	}

	// MARK: Private

	private var urlSession: URLSession = {
		var newConfiguration: URLSessionConfiguration = .default
		newConfiguration.waitsForConnectivity = false
		newConfiguration.allowsCellularAccess = true
		return URLSession(configuration: newConfiguration)
	}()
}
