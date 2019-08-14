//
//  UINavigationBar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UINavigationBar {
  
  // MARK: - Helper
  
  /// Helper associated with **text attributes** setting feature.
  ///
  /// - `title` case for `titleTextAttributes` property setter.
  /// - `largeTitle` case for `largeTitleTextAttributes` property setter.
  @discardableResult
  func textAttributes(_ attributes: NavigationBarBuilder.TextAttributes) -> Builder {
    switch attributes {
    case let .each(title, largeTitle):
      base.titleTextAttributes = title
      base.largeTitleTextAttributes = largeTitle
    case let .title(title):
      base.titleTextAttributes = title
    case let .largeTitle(largeTitle):
      base.largeTitleTextAttributes = largeTitle
    }
    return self
  }
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `backIndicator` case for
  ///   `backIndicatorImage` and `backIndicatorTransitionMaskImage` property setter.
  /// - `shadow` case for `shadowImage` property setter.
  /// - `background` case for
  ///   `setBackground(_:for:)` and `setBackground(_:for:barMetrics:)` method.
  @discardableResult
  func image(_ image: NavigationBarBuilder.Image) -> Builder {
    switch image {
    case let .each(backIndicator, shadow, background):
      switch backIndicator {
      case let .each(plain, transitionMask):
        base.backIndicatorImage = plain
        base.backIndicatorTransitionMaskImage = transitionMask
      case let .plain(plain):
        base.backIndicatorImage = plain
      case let .transitionMask(transitionMask):
        base.backIndicatorTransitionMaskImage = transitionMask
      }
      base.shadowImage = shadow
      switch background {
      case let .unspecifiedPosition(image, barMetrics):
        base.setBackgroundImage(image, for: barMetrics)
      case let .specifiedPosition(image, barPosition, barMetrics):
        base.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
      }
    case let .backIndicator(backIndicator):
      switch backIndicator {
      case let .each(plain, transitionMask):
        base.backIndicatorImage = plain
        base.backIndicatorTransitionMaskImage = transitionMask
      case let .plain(plain):
        base.backIndicatorImage = plain
      case let .transitionMask(transitionMask):
        base.backIndicatorTransitionMaskImage = transitionMask
      }
    case let .shadow(shadow):
      base.shadowImage = shadow
    case let .background(background):
      switch background {
      case let .unspecifiedPosition(image, barMetrics):
        base.setBackgroundImage(image, for: barMetrics)
      case let .specifiedPosition(image, barPosition, barMetrics):
        base.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
      }
    }
    return self
  }
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `plain` case for `tintColor` property setter.
  /// - `bar` case for `barTintColor` property setter.
  @discardableResult
  func color(_ color: NavigationBarBuilder.Color) -> Builder {
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
  
  // MARK: - Responding to Navigation Bar Changes
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UINavigationBarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Pushing and Popping Items
  
  /// Wrapper of `pushItem(_:animated:)` method.
  @discardableResult
  func item(_ item: UINavigationItem, animated: Bool) -> Builder {
    base.pushItem(item, animated: animated)
    return self
  }
  
  /// Wrapper of `setItems(_:animated:)` method.
  @discardableResult
  func items(_ items: [UINavigationItem]?, animated: Bool) -> Builder {
    base.setItems(items, animated: animated)
    return self
  }
  
  // MARK: - Customizing the Title's Appearance
  
  /// Wrapper of `titleTextAttributes` property setter.
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> Builder {
    base.titleTextAttributes = attributes
    return self
  }
  
  /// Wrapper of `largeTitleTextAttributes` property setter.
  @discardableResult
  func largeTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> Builder {
    base.largeTitleTextAttributes = attributes
    return self
  }
  
  /// Wrapper of `prefersLargeTitles` property setter.
  @discardableResult
  func prefersLargeTitles(_ flag: Bool) -> Builder {
    base.prefersLargeTitles = flag
    return self
  }
  
  /// Wrapper of `setTitleVerticalPositionAdjustment(_:for:)` method.
  @discardableResult
  func titleVerticalPositionAdjustment(_ adjustment: CGFloat,
                                       for barMetrics: UIBarMetrics) -> Builder {
    base.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
    return self
  }
  
  // MARK: - Customizing the Bar Appearance
  
  /// Wrapper of `backIndicatorImage` property setter.
  @discardableResult
  func backIndicatorImage(_ image: UIImage?) -> Builder {
    base.backIndicatorImage = image
    return self
  }
  
  /// Wrapper of `backIndicatorTransitionMaskImage` property setter.
  @discardableResult
  func backIndicatorTransitionMaskImage(_ image: UIImage?) -> Builder {
    base.backIndicatorTransitionMaskImage = image
    return self
  }
  
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
  
  /// Wrapper of `shadowImage` property setter.
  @discardableResult
  func shadowImage(_ image: UIImage?) -> Builder {
    base.shadowImage = image
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
  
  /// Wrapper of `setBackgroundImage(_:for:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?, for barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, for: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:barMetrics:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for barPosition: UIBarPosition,
                       barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
    return self
  }
}

#endif
