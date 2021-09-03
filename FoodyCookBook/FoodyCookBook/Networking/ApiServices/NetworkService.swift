import Foundation

// MARK: - NetworkService

class NetworkService: NSObject {

    // MARK: Lifecycle

    override init() {
        super.init()
    }

    // MARK: Internal

    static let shared = NetworkService()
}

extension NetworkService {

    static func checkConnectivity(network: @escaping APIClientNetworkHandler) {
        if ReachabilityManager().isReachable {
            if !ReachabilityManager().isServerReachable() {
                Banner.noConnection(message: "Connection is broken")
                network()
            }
        } else {
            Banner.noConnection(message: "Oops! Please check your internet connection.")
            network()
        }
    }
}
