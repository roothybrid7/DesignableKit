//
//  UIView+LayerConfigurable.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/08/25.
//
//

#if os(iOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, tvOS 9.0, *)
extension UIView: UILayerConfigurable {

    @IBInspectable public var layerDrawsAsynchronously: Bool {
        get {
            return layer.drawsAsynchronously
        }
        set {
            layer.drawsAsynchronously = newValue
        }
    }

    @IBInspectable public var layerCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable public var layerBorderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable public var layerBorderUIColor: UIColor? {
        get {
            return layer.borderUIColor
        }
        set {
            layer.borderUIColor = newValue
        }
    }

    @IBInspectable public var layerBackgroundUIColor: UIColor? {
        get {
            return layer.backgroundUIColor
        }
        set {
            layer.backgroundUIColor = newValue
        }
    }

    @IBInspectable public var layerShouldRasterize: Bool {
        get {
            return layer.shouldRasterize
        }
        set {
            if layer.shouldRasterize != newValue {
                layer.shouldRasterize = newValue
                layer.rasterizationScale = newValue == true ? UIScreen.main.scale : 1.0
            }
        }
    }

    @IBInspectable public var layerShadowUIColor: UIColor? {
        get {
            return layer.shadowUIColor
        }
        set {
            layer.shadowUIColor = newValue
        }
    }

    @IBInspectable public var layerShadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable public var layerShadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }

    @IBInspectable public var layerShadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
}
