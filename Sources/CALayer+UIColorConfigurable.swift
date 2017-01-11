//
//  CALayer+UIColorConfigurable.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/08/25.
//
//

import QuartzCore
#if os(iOS) || os(watchOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
public protocol LayerUIColorConfigurable {
    var borderUIColor: UIColor? { get set }
    var backgroundUIColor: UIColor? { get set }
    var shadowUIColor: UIColor? { get set }
}

@available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
extension CALayer: LayerUIColorConfigurable {

    public var borderUIColor: UIColor? {
        get {
            guard let borderColor = borderColor else {
                return nil
            }
            return UIColor(cgColor: borderColor)
        }
        set {
            guard let color = newValue else { return }
            borderColor = color.cgColor
        }
    }

    public var backgroundUIColor: UIColor? {
        get {
            guard let backgroundColor = backgroundColor else {
                return nil
            }
            return UIColor(cgColor: backgroundColor)
        }
        set {
            guard let color = newValue else { return }
            backgroundColor = color.cgColor
        }
    }

    public var shadowUIColor: UIColor? {
        get {
            guard let shadowColor = shadowColor else {
                return nil
            }
            return UIColor(cgColor: shadowColor)
        }
        set {
            guard let color = newValue else { return }
            shadowColor = color.cgColor
        }
    }
}
