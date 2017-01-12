//
//  UILayerConfifurable.swift
//  DesignableKit
//
//  Created by SATOSHI OHKI on 2017/01/11.
//
//

#if os(iOS) || os(watchOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
/// Defines a blueprint of properties for CALayer configuration.
public protocol UILayerConfigurable {
    var layerDrawsAsynchronously: Bool { get set }

    /**
     The cornerRadius of CALayer by an extension.

     For example, `layerCornerRaidus` will be implemented to:

     extension UIView: LayerConfigurable {
         var layerCornerRadius: CGFloat {
            get {
                return layer.cornerRadius
            }
            set {
                layer.cornerRadius = newValue
            }
         }
     }
     */
    var layerCornerRadius: CGFloat { get set }
    var layerBorderWidth: CGFloat { get set }
    var layerBorderUIColor: UIColor? { get set }
    var layerBackgroundUIColor: UIColor? { get set }
    var layerShouldRasterize: Bool { get set }
    var layerShadowUIColor: UIColor? { get set }
    var layerShadowOpacity: Float { get set }
    var layerShadowOffset: CGSize { get set }
    var layerShadowRadius: CGFloat { get set }
}
