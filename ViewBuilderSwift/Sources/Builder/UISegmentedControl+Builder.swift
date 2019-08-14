//
//  UISegmentedControl+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UISegmentedControl {
  
  // MARK: - Helper
  
  /// Helper of `valueChanged` event of target-action pattern.
  @discardableResult
  func valueChanged(_ target: Any?, selector: Selector) -> Builder {
    base.addTarget(target, action: selector, for: .valueChanged)
    return self
  }
  
  /// Helper of `setContentOffset(_:forSegmentAt:)` method.
  @discardableResult
  func contentOffset(_ offset: Size<Int>, forSegmentAt index: Int) -> Builder {
    base.setContentOffset(offset.cgSize, forSegmentAt: index)
    return self
  }
  
  /// Helper of `setContentOffset(_:forSegmentAt:)` method.
  @discardableResult
  func contentOffset(_ offset: Size<Double>,
                     forSegmentAt index: Int) -> Builder {
    base.setContentOffset(offset.cgSize, forSegmentAt: index)
    return self
  }
  
  /// Helper of `setContentOffset(_:forSegmentAt:)` method.
  @discardableResult
  func contentOffset(_ offset: Size<CGFloat>,
                     forSegmentAt index: Int) -> Builder {
    base.setContentOffset(offset.cgSize, forSegmentAt: index)
    return self
  }
  
  /// Helper associated with **image** setting feature.
  @discardableResult
  func image(_ image: SegmentedControlBuilder.Image) -> Builder {
    switch image {
    case let .each(background, divider):
      base.setBackgroundImage(background.0,
                              for: background.state,
                              barMetrics: background.barMetrics)
      base.setDividerImage(divider.0,
                           forLeftSegmentState: divider.leftSegmentState,
                           rightSegmentState: divider.rightSegmentState,
                           barMetrics: divider.barMetrcis)
    case let .background(image, state, barMetrics):
      base.setBackgroundImage(image, for: state, barMetrics: barMetrics)
    case let .divider(image, leftSegmentState, rightSegmentState, barMetrcis):
      base.setDividerImage(image,
                           forLeftSegmentState: leftSegmentState,
                           rightSegmentState: rightSegmentState,
                           barMetrics: barMetrcis)
    }
    return self
  }

  // MARK: - Managing Segment Content
  
  /// Wrapper of `setImage(_:forSegmentAt:)` method.
  @discardableResult
  func image(_ image: UIImage?, forSegmentAt index: Int) -> Builder {
    base.setImage(image, forSegmentAt: index)
    return self
  }
  
  /// Wrapper of `setTitle(_:forSegmentAt:)` method.
  @discardableResult
  func title(_ title: String?, forSegmentAt index: Int) -> Builder {
    base.setTitle(title, forSegmentAt: index)
    return self
  }
  
  // MARK: - Managing Segments
  
  /// Wrapper of `insertSegment(with:at:animated:)` method.
  @discardableResult
  func segment(with image: UIImage?, at index: Int, animated: Bool) -> Builder {
    base.insertSegment(with: image, at: index, animated: animated)
    return self
  }
  
  /// Wrapper of `insertSegment(withTitle:at:animated:)` method.
  @discardableResult
  func segment(withTitle title: String?, at index: Int, animated: Bool) -> Builder {
    base.insertSegment(withTitle: title, at: index, animated: animated)
    return self
  }
  
  /// Wrapper of `selectedSegmentIndex` property setter.
  @discardableResult
  func selectedSegmentIndex(_ index: Int) -> Builder {
    base.selectedSegmentIndex = index
    return self
  }
  
  // MARK: - Managing Segment Behavior and Appearance
  
  /// Wrapper of `isMomentary` property setter.
  @discardableResult
  func isMomentary(_ flag: Bool) -> Builder {
    base.isMomentary = flag
    return self
  }
  
  /// Wrapper of `setEnabled(_:forSegmentAt:)` method.
  @discardableResult
  func isEnabled(_ flag: Bool, forSegmentAt index: Int) -> Builder {
    base.setEnabled(flag, forSegmentAt: index)
    return self
  }
  
  /// Wrapper of `setContentOffset(_:forSegmentAt:)` method.
  @discardableResult
  func contentOffset(_ offset: CGSize, forSegmentAt index: Int) -> Builder {
    base.setContentOffset(offset, forSegmentAt: index)
    return self
  }
  
  /// Wrapper of `setWidth(_:forSegmentAt:)` method.
  @discardableResult
  func width(_ width: CGFloat, forSegmentAt index: Int) -> Builder {
    base.setWidth(width, forSegmentAt: index)
    return self
  }
  
  /// Wrapper of `apportionsSegmentWidthsByContent` property setter.
  @discardableResult
  func apportionsSegmentWidthsByContent(_ flag: Bool) -> Builder {
    base.apportionsSegmentWidthsByContent = flag
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
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
  
  /// Wrapper of `setContentPositionAdjustment(_:forSegmentType:barMetrics:)` method.
  @discardableResult
  func contentPositionAdjustment(_ adjustment: UIOffset,
                                 forSegmentType segmentType: UISegmentedControl.Segment,
                                 barMetrics: UIBarMetrics) -> Builder {
    base.setContentPositionAdjustment(adjustment,
                                      forSegmentType: segmentType,
                                      barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setDividerImage(_:forLeftSegmentState:rightSegmentState:)` method.
  @discardableResult
  func dividerImage(_ image: UIImage?,
                    forLeftSegmentState leftSegmentState: UIControl.State,
                    rightSegmentState: UIControl.State,
                    barMetrics: UIBarMetrics) -> Builder {
    base.setDividerImage(image,
                         forLeftSegmentState: leftSegmentState,
                         rightSegmentState: rightSegmentState,
                         barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setTitleTextAttributes(_:for:)` method.
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key: Any],
                           for state: UIControl.State) -> Builder {
    base.setTitleTextAttributes(attributes, for: state)
    return self
  }
}

#endif
