import Foundation

public extension NSObject {

    class var className: String {
        NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }

    var className: String {
        NSStringFromClass(type(of: self)).components(separatedBy: ".").last ?? ""
    }
}
