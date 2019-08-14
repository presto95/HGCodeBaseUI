//
//  UITabBarItem+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITabBarItem {
  
  // MARK: - Helper
  
  /// Helper associatd with **badge** setting feature.
  ///
  /// - `value` case for `badgeValue` property setter.
  /// - `color` case for `badgeColor` property setter.
  /// - `textAttributes` case for `setBadgeTextAttributes(_:for:)` method.
  @discardableResult
  func badge(_ badge: TabBarItemBuilder.Badge) -> Builder {
    switch badge {
    case let .each(value, color, textAttributes):
      base.badgeValue = value
      base.badgeColor = color
      base.setBadgeTextAttributes(textAttributes.0, for: textAttributes.state)
    case let .value(value):
      base.badgeValue = value
    case let .color(color):
      base.badgeColor = color
    case let .textAttributes(textAttributes, state):
      base.setBadgeTextAttributes(textAttributes, for: state)
    }
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `selectedImage` property setter.
  @discardableResult
  func selectedImage(_ image: UIImage?) -> Builder {
    base.selectedImage = image
    return self
  }
  
  /// Wrapper of `titlePositionAdjustment` property setter.
  @discardableResult
  func titlePositionAdjustment(_ adjustment: UIOffset) -> Builder {
    base.titlePositionAdjustment = adjustment
    return self
  }
  
  // MARK: - Configuring the Badge
  
  /// Wrapper of `badgeValue` property setter.
  @discardableResult
  func badgeValue(_ value: String?) -> Builder {
    base.badgeValue = value
    return self
  }
  
  /// Wrapper of `badgeColor` property setter.
  @discardableResult
  func badgeColor(_ color: UIColor?) -> Builder {
    base.badgeColor = color
    return self
  }
  
  /// Wrapper of `setBadgeTextAttributes(_:for:)` method.
  @discardableResult
  func badgeTextAttributes(_ attributes: [NSAttributedString.Key: Any]?,
                           for state: UIControl.State) -> Builder {
    base.setBadgeTextAttributes(attributes, for: state)
    return self
  }
}

#endif
