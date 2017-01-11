//
//  ExtendedNavBarView.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/09/23.
//
//

#if os(iOS) || os(tvOS)
    import UIKit
#endif

/// This view is used as the navigation bar extension view.
///
/// A View that draws a gray hairline along its bottom border, similar to a navigation bar.
@available(iOS 8.0, tvOS 9.0, *)
@IBDesignable
open class ExtendedNavBarView: UIView {

    override open func willMove(toWindow newWindow: UIWindow?) {
        configureHairline()
    }

    fileprivate func configureHairline() {
        layerShadowOffset = CGSize(width: 0, height: 1.0/UIScreen.main.scale)
        layerShadowRadius = 0
        layerShadowUIColor = UIColor.black
        layerShadowOpacity = 0.25
    }
}
