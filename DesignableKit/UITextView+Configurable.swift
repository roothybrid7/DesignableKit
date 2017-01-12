//
//  UITextView+Configurable.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/08/25.
//
//

#if os(iOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, tvOS 9.0, *)
private protocol Configurable {
    var textContainerInsetString: String { get set }
    var textContainerLineFragmentPadding: CGFloat { get set }
}

@available(iOS 8.0, tvOS 9.0, *)
extension UITextView: Configurable {

    @IBInspectable var textContainerInsetString: String {
        get {
            return NSStringFromUIEdgeInsets(textContainerInset)
        }
        set {
            textContainerInset = UIEdgeInsetsFromString(newValue)
        }
    }

    @IBInspectable var textContainerLineFragmentPadding: CGFloat {
        get {
            return textContainer.lineFragmentPadding
        }
        set {
            textContainer.lineFragmentPadding = newValue
        }
    }
}
