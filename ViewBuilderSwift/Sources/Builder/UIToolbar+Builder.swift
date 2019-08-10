//
//  UIToolbar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIToolbar {
  
  // MARK: - Managing Toolbar Changes
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UIToolbarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring Toolbar Items
  
  @discardableResult
  func items(_ items: [UIBarButtonItem]?, animated: Bool = false) -> Builder {
    base.setItems(items, animated: animated)
    return self
  }
  
  // MARK: - Customizing Appearance
  
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Builder {
    base.barStyle = style
    return self
  }
  
  @discardableResult
  func isTranslucent(_ flag: Bool) -> Builder {
    base.isTranslucent = flag
    return self
  }
  
  @discardableResult
  func tintColor(_ color: ToolbarBuilder.Color) -> Builder {
    switch color {
    case let .each(bar, item):
      base.barTintColor = bar
      base.tintColor = item
    case let .bar(color):
      base.barTintColor = color
    case let .item(color):
      base.tintColor = color
    }
    return self
  }
  
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
}

#endif
