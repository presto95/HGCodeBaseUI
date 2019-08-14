//
//  UITabBar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UITabBar {
  
  // MARK: - Helper
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `background` case for `backgroundImage` property setter.
  /// - `shadow` case for `shadowImage` property setter.
  /// - `selectionIndicator` case for `selectionIndicatorImage` property setter.
  @discardableResult
  func image(_ image: TabBarBuilder.Image) -> Builder {
    switch image {
    case let .each(background, shadow, selectionIndicator):
      base.backgroundImage = background
      base.shadowImage = shadow
      base.selectionIndicatorImage = selectionIndicator
    case let .background(background):
      base.backgroundImage = background
    case let .shadow(shadow):
      base.shadowImage = shadow
    case let .selectionIndicator(selectionIndicator):
      base.selectionIndicatorImage = selectionIndicator
    }
    return self
  }
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `plain` case for `tintColor` property setter.
  /// - `bar` case for `barTintColor` property setter.
  @discardableResult
  func color(_ color: TabBarBuilder.Color) -> Builder {
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
  
  /// Helper associated with **item layout** setting feature.
  ///
  /// - `positioning` case for `itemPositioning` property setter.
  /// - `spacing` case for `itemSpacing` property setter.
  /// - `width` case for `itemWidth` property setter.
  @discardableResult
  func itemLayout(_ itemLayout: TabBarBuilder.ItemLayout) -> Builder {
    switch itemLayout {
    case let .each(positioning, spacing, width):
      base.itemPositioning = positioning
      base.itemSpacing = spacing
      base.itemWidth = width
    case let .positioning(positioning):
      base.itemPositioning = positioning
    case let .spacing(spacing):
      base.itemSpacing = spacing
    case let .width(width):
      base.itemWidth = width
    }
    return self
  }
  
  // MARK: - Customizing the Tab Bar Behavior
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITabBarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring Tab Bar Items
  
  /// Wrapper of `items` property setter.
  @discardableResult
  func items(_ items: [UITabBarItem]?) -> Builder {
    base.items = items
    return self
  }
  
  /// Wrapper of `setItems(_:animated:)` method.
  @discardableResult
  func items(_ items: [UITabBarItem]?, animated: Bool) -> Builder {
    base.setItems(items, animated: animated)
    return self
  }
  
  /// Wrapper of `selectedItem` property setter.
  @discardableResult
  func selectedItem(_ item: UITabBarItem?) -> Builder {
    base.selectedItem = item
    return self
  }
  
  // MARK: - Customizing Tab Bar Appearance
  
  /// Wrapper of `barStyle` property setter.
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Builder {
    base.barStyle = style
    return self
  }
  
  /// Wrapper of `isTranslucent` property setter.
  @discardableResult
  func isTranslucent(_ flag: Bool) -> Builder {
    base.isTranslucent = flag
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
  
  /// Wrapper of `unselectedItemTintColor` property setter.
  @discardableResult
  func unselectedItemTintColor(_ color: UIColor?) -> Builder {
    base.unselectedItemTintColor = color
    return self
  }
  
  /// Wrapper of `backgroundImage` property setter.
  @discardableResult
  func backgroundImage(_ image: UIImage?) -> Builder {
    base.backgroundImage = image
    return self
  }
  
  /// Wrapper of `shadowImage` property setter.
  @discardableResult
  func shadowImage(_ image: UIImage?) -> Builder {
    base.shadowImage = image
    return self
  }
  
  /// Wrapper of `selectionIndicatorImage` property setter.
  @discardableResult
  func selectionIndicatorImage(_ image: UIImage?) -> Builder {
    base.selectionIndicatorImage = image
    return self
  }
  
  // MARK: - Customizing the Item Spacing
  
  /// Wrapper of `itemPositioning` property setter.
  @discardableResult
  func itemPositioning(_ positioning: UITabBar.ItemPositioning) -> Builder {
    base.itemPositioning = positioning
    return self
  }
  
  /// Wrapper of `itemSpacing` property setter.
  @discardableResult
  func itemSpacing(_ spacing: CGFloat) -> Builder {
    base.itemSpacing = spacing
    return self
  }
  
  /// Wrapper of `itemWidth` property setter.
  @discardableResult
  func itemWidth(_ width: CGFloat) -> Builder {
    base.itemWidth = width
    return self
  }
}

#endif
