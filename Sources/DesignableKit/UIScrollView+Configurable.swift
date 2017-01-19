//
//  UIScrollView+Configurable.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/08/25.
//
//

#if os(iOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, tvOS 9.0, *)
fileprivate protocol Configurable {
    var contentInsetString: String { get set }
}

@available(iOS 8.0, tvOS 9.0, *)
extension UIScrollView: Configurable {

    @IBInspectable public var contentInsetString: String {
        get {
            return NSStringFromUIEdgeInsets(contentInset)
        }
        set {
            contentInset = UIEdgeInsetsFromString(newValue)
        }
    }
}
