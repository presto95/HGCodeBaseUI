//
//  UIToolbar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIToolbar {
  
  // MARK: - Helper
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `plain` case for `tintColor` property setter.
  /// - `bar` case for `barTintColor` property setter.
  @discardableResult
  func color(_ color: ToolbarBuilder.Color) -> Builder {
    switch color {
    case let .each(plain, bar):
      base.tintColor = plain
      base.barTintColor = bar
    case let .plain(plain):
      base.tintColor = plain
    case let .bar(bar):
      base.barTintColor = bar
    }
    return self
  }
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `background` case for `setBackgroundImage(_:forToolbarPosition:barMetrics:)` method.
  /// - `shadow` case for `setShadowImage(_:forToolbarPosition:)` method.
  @discardableResult
  func image(_ image: ToolbarBuilder.Image) -> Builder {
    switch image {
    case let .each(background, shadow):
      base.setBackgroundImage(background.0,
                              forToolbarPosition: background.toolbarPosition,
                              barMetrics: background.barMetrics)
      base.setShadowImage(shadow.0, forToolbarPosition: shadow.toolbarPosition)
    case let .background(image, toolbarPosition, barMetrics):
      base.setBackgroundImage(image, forToolbarPosition: toolbarPosition, barMetrics: barMetrics)
    case let .shadow(image, barPosition):
      base.setShadowImage(image, forToolbarPosition: barPosition)
    }
    return self
  }
  
  // MARK: - Managing Toolbar Changes
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UIToolbarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring Toolbar Items
  
  /// Wrapper of `items` property setter.
  @discardableResult
  func items(_ items: [UIBarButtonItem]?) -> Builder {
    base.items = items
    return self
  }
  
  /// Wrapper of `setItems(_:animated:)` method.
  @discardableResult
  func items(_ items: [UIBarButtonItem]?, animated: Bool) -> Builder {
    base.setItems(items, animated: animated)
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `barStyle` property setter.
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Builder {
    base.barStyle = style
    return self
  }
  
  /// Wrapper of `barTintColor` property setter.
  @discardableResult
  func barTintColor(_ color: UIColor?) -> Builder {
    base.barTintColor = color
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `isTranslucent` property setter.
  @discardableResult
  func isTranslucent(_ flag: Bool) -> Builder {
    base.isTranslucent = flag
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:forToolbarPosition:barMetrics:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       forToolbarPosition toolbarPosition: UIBarPosition,
                       barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, forToolbarPosition: toolbarPosition, barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setShadowImage(_:forToolbarPosition:)` method.
  @discardableResult
  func shadowImage(_ image: UIImage?,
                   forToolbarPosition toolbarPosition: UIBarPosition) -> Builder {
    base.setShadowImage(image, forToolbarPosition: toolbarPosition)
    return self
  }
}

#endif
