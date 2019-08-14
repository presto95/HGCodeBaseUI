//
//  UIBarButtonItem+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIBarButtonItem {
  
  // MARK: - Helper
  
  /// Helper associated with **target-action** setting feature.
  ///
  /// - `target` case for `target` property setter.
  /// - `action` case for `action` property setter.
  @discardableResult
  func targetAction(_ targetAction: BarButtonItemBuilder.TargetAction) -> Builder {
    switch targetAction {
    case let .each(target, action):
      base.target = target
      base.action = action
    case let .target(target):
      base.target = target
    case let .action(action):
      base.action = action
    }
    return self
  }
  
  // MARK: - Getting and Setting Properties
  
  /// Wrapper of `target` property setter.
  @discardableResult
  func target(_ target: AnyObject?) -> Builder {
    base.target = target
    return self
  }
  
  /// Wrapper of `action` property setter.
  @discardableResult
  func action(_ action: Selector?) -> Builder {
    base.action = action
    return self
  }
  
  /// Wrapper of `style` property setter.
  @discardableResult
  func style(_ style: UIBarButtonItem.Style) -> Builder {
    base.style = style
    return self
  }
  
  /// Wrapper of `possibleItems` property setter.
  @discardableResult
  func possibleTitles(_ titles: Set<String>?) -> Builder {
    base.possibleTitles = titles
    return self
  }
  
  /// Wrapper of `width` property setter.
  @discardableResult
  func width(_ width: CGFloat) -> Builder {
    base.width = width
    return self
  }
  
  /// Wrapper of `customView` property setter.
  @discardableResult
  func customView(_ view: UIView?) -> Builder {
    base.customView = view
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor?) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `setBackButtonBackgroundImage(_:for:barMetrics:)` method.
  @discardableResult
  func backButtonBackgroundImage(_ image: UIImage?,
                                 for state: UIControl.State,
                                 barMetrics: UIBarMetrics) -> Builder {
    base.setBackButtonBackgroundImage(image, for: state, barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackButtonTitlePositionAdjustment(_:for:)` method.
  @discardableResult
  func backButtonTitlePositionAdjustment(_ adjustment: UIOffset,
                                         for barMetrics: UIBarMetrics) -> Builder {
    base.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackButtonBackgroundVerticalPositionAdjustment(_:for:)` method.
  @discardableResult
  func backButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat,
                                                      for barMetrics: UIBarMetrics) -> Builder {
    base.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackgroundVerticalPositionAdjustment(_:for:)` method.
  @discardableResult
  func backgroundVerticalPositionAdjustment(_ adjustment: CGFloat,
                                            for barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:barMetrics:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State,
                       barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, for: state, barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:style:barMetrics:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State,
                       style: UIBarButtonItem.Style,
                       barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, for: state, style: style, barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setTitlePositionAdjustment(_:for:)` method.
  @discardableResult
  func titlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> Builder {
    base.setTitlePositionAdjustment(adjustment, for: barMetrics)
    return self
  }
}

#endif
