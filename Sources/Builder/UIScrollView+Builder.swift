//
//  UIScrollView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIScrollView {
  
  // MARK: - Helper
  
  /// Helper of `contentSize` property setter.
  @discardableResult
  func contentSize(_ size: Size<Int>) -> Builder {
    base.contentSize = size.cgSize
    return self
  }
  
  /// Helper of `contentSize` property setter.
  @discardableResult
  func contentSize(_ size: Size<Double>) -> Builder {
    base.contentSize = size.cgSize
    return self
  }
  
  /// Helper of `contentSize` property setter.
  @discardableResult
  func contentSize(_ size: Size<CGFloat>) -> Builder {
    base.contentSize = size.cgSize
    return self
  }
  
  /// Helper of `contentOffset` property setter.
  @discardableResult
  func contentOffset(_ offset: Point<Int>) -> Builder {
    base.contentOffset = offset.cgPoint
    return self
  }
  
  /// Helper of `contentOffset` property setter.
  @discardableResult
  func contentOffset(_ offset: Point<Double>) -> Builder {
    base.contentOffset = offset.cgPoint
    return self
  }
  
  /// Helper of `contentOffset` property setter.
  @discardableResult
  func contentOffset(_ offset: Point<CGFloat>) -> Builder {
    base.contentOffset = offset.cgPoint
    return self
  }

  /// Helper of `contentInset` property setter.
  @discardableResult
  func contentInset(_ inset: EdgeInsets) -> Builder {
    base.contentInset = inset.uiEdgeInsets
    return self
  }
  
  /// Helper of `scrollIndicatorInsets` property setter.
  @discardableResult
  func scrollIndicatorInsets(_ inset: EdgeInsets) -> Builder {
    base.scrollIndicatorInsets = inset.uiEdgeInsets
    return self
  }
  
  /// Helper associated with **content** setting feature.
  ///
  /// - `size` case for `contentSize` property setter.
  /// - `offset` case for `contentOffset` property setter.
  /// - `inset` case for `contentInset` property setter.
  @discardableResult
  func content(_ content: ScrollViewBuilder.Content<Int>) -> Builder {
    switch content {
    case let .each(size, offset, inset):
      base.contentSize = size.cgSize
      base.contentOffset = offset.cgPoint
      base.contentInset = inset.uiEdgeInsets
    case let .size(size):
      base.contentSize = size.cgSize
    case let .offset(offset):
      base.contentOffset = offset.cgPoint
    case let .inset(inset):
      base.contentInset = inset.uiEdgeInsets
    }
    return self
  }
  
  /// Helper associated with **always bounces** setting feature.
  ///
  /// - `horizontal` case for `alwaysBouncesHorizontal` property setter.
  /// - `vertical` case for `alwaysBouncesVertical` property setter.
  @discardableResult
  func alwaysBounce(_ direction: ScrollViewBuilder.Direction<Bool>) -> Builder {
    switch direction {
    case let .horizontal(horizontal):
      base.alwaysBounceHorizontal = horizontal
    case let .vertical(vertical):
      base.alwaysBounceVertical = vertical
    }
    return self
  }
  
  /// Helper associated with **shows scroll indicator** setting feature.
  ///
  /// - `horizontal` case for `showsHorizontalScrollIndicator` property setter.
  /// - `vertical` case for `showsVerticalScrollIndicator` property setter.
  @discardableResult
  func showsScrollIndicator(_ direction: ScrollViewBuilder.Direction<Bool>) -> Builder {
    switch direction {
    case let .horizontal(horizontal):
      base.showsHorizontalScrollIndicator = horizontal
    case let .vertical(vertical):
      base.showsVerticalScrollIndicator = vertical
    }
    return self
  }
  
  /// Helper associated with **scroll indicator** setting feature.
  ///
  /// - `style` case for `indicatorStyle` property setter.
  /// - `insets` case for `scrollIndicatorInsets` property setter.
  /// - `shows` case for
  ///   `showsHorizontalScrollIndicator` and `showsVerticalScrollIndicator` property setter.
  @discardableResult
  func indicator(_ indicator: ScrollViewBuilder.Indicator) -> Builder {
    switch indicator {
    case let .each(style, insets, shows):
      base.indicatorStyle = style
      base.scrollIndicatorInsets = insets.uiEdgeInsets
      switch shows {
      case let .horizontal(horizontal):
        base.showsHorizontalScrollIndicator = horizontal
      case let .vertical(vertical):
        base.showsVerticalScrollIndicator = vertical
      }
    case let .style(style):
      base.indicatorStyle = style
    case let .insets(insets):
      base.scrollIndicatorInsets = insets.uiEdgeInsets
    case let .shows(shows):
      switch shows {
      case let .horizontal(horizontal):
        base.showsHorizontalScrollIndicator = horizontal
      case let .vertical(vertical):
        base.showsVerticalScrollIndicator = vertical
      }
    }
    return self
  }
  
  /// Helper associated with **zoom scale** setting feature.
  ///
  /// - `range` case for `minimumZoomScale` and `maximumZoomScale` property setter.
  /// - `value` case for `zoomScale` property setter.
  /// - `min` csae for `minimumZoomScale` property setter.
  /// - `max` case for `maximumZoomScale` property setter.
  @discardableResult
  func zoomScale(_ zoomScale: RangeValue<CGFloat>) -> Builder {
    switch zoomScale {
    case let .each(value, min, max):
      base.zoomScale = value
      base.minimumZoomScale = min
      base.maximumZoomScale = max
    case let .range(min, max):
      base.minimumZoomScale = min
      base.maximumZoomScale = max
    case let .value(value):
      base.zoomScale = value
    case let .min(min):
      base.minimumZoomScale = min
    case let .max(max):
      base.maximumZoomScale = max
    }
    return self
  }
  
  // MARK: - Responding to Scroll View Interactions
  
  /// Wrapper of `delegate` property setter.
  func delegate<T>(_ delegate: T) -> Builder where T: UIScrollViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Managing the Content Size and Offset
  
  /// Wrapper of `contentSize` property setter.
  @discardableResult
  func contentSize(_ size: CGSize) -> Builder {
    base.contentSize = size
    return self
  }
  
  /// Wrapper of `contentOffset` property setter.
  @discardableResult
  func contentOffset(_ offset: CGPoint) -> Builder {
    base.contentOffset = offset
    return self
  }
  
  /// Wrapper of `setContentOffset(_:animated:)` method.
  @discardableResult
  func contentOffset(_ offset: CGPoint, animated: Bool) -> Builder {
    base.setContentOffset(offset, animated: animated)
    return self
  }
  
  // MARK: - Managing the Content Inset Behavior
  
  /// Wrapper of `contentInset` property setter.
  @discardableResult
  func contentInset(_ inset: UIEdgeInsets) -> Builder {
    base.contentInset = inset
    return self
  }
  
  /// Wrapper of `contentInsetAdjustmentBehavior` property setter.
  @discardableResult
  func contentInsetAdjustmentBehavior(
    _ behavior: UIScrollView.ContentInsetAdjustmentBehavior
  ) -> Builder {
    base.contentInsetAdjustmentBehavior = behavior
    return self
  }
  
  // MARK: - Configuring Scroll View
  
  /// Wrapper of `isScrollEnabled` property setter.
  @discardableResult
  func isScrollEnabled(_ flag: Bool) -> Builder {
    base.isScrollEnabled = flag
    return self
  }
  
  /// Wrapper of `isDirectionalLockEnabled` property setter.
  @discardableResult
  func isDirectionalLockEnabled(_ flag: Bool) -> Builder {
    base.isDirectionalLockEnabled = flag
    return self
  }
  
  /// Wrapper of `isPagingEnabled` property setter.
  @discardableResult
  func isPagingEnabled(_ flag: Bool) -> Builder {
    base.isPagingEnabled = flag
    return self
  }
  
  /// Wrapper of `scrollsToTop` property setter.
  @discardableResult
  func scrollsToTop(_ flag: Bool) -> Builder {
    base.scrollsToTop = flag
    return self
  }
  
  /// Wrapper of `bounces` property setter.
  @discardableResult
  func bounces(_ flag: Bool) -> Builder {
    base.bounces = flag
    return self
  }
  
  /// Wrapper of `alwaysBounceVertical` property setter.
  @discardableResult
  func alwaysBounceVertical(_ flag: Bool) -> Builder {
    base.alwaysBounceVertical = flag
    return self
  }
  
  /// Wrapper of `alwaysBounceHorizontal` property setter.
  @discardableResult
  func alwaysBounceHorizontal(_ flag: Bool) -> Builder {
    base.alwaysBounceHorizontal = flag
    return self
  }
  
  // MARK: - Managing the Scroll Indicator and Refresh Control
  
  /// Wrapper of `indicatorStyle` property setter.
  @discardableResult
  func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Builder {
    base.indicatorStyle = style
    return self
  }
  
  /// Wrapper of `scrollIndicatorInsets` property setter.
  @discardableResult
  func scrollIndicatorInsets(_ insets: UIEdgeInsets) -> Builder {
    base.scrollIndicatorInsets = insets
    return self
  }
  
  /// Wrapper of `showsHorizontalScrollIndicator` property setter.
  @discardableResult
  func showsHorizontalScrollIndicator(_ flag: Bool) -> Builder {
    base.showsHorizontalScrollIndicator = flag
    return self
  }
  
  /// Wrapper of `showsVerticalScrollIndicator` property setter.
  @discardableResult
  func showsVerticalScrollIndicator(_ flag: Bool) -> Builder {
    base.showsVerticalScrollIndicator = flag
    return self
  }
  
  /// Wrapper of `refreshControl` property setter.
  @discardableResult
  func refreshControl(_ refreshControl: UIRefreshControl?) -> Builder {
    base.refreshControl = refreshControl
    return self
  }
  
  // MARK: - Zooming and Panning
  
  /// Wrapper of `zoomScale` property setter.
  @discardableResult
  func zoomScale(_ scale: CGFloat) -> Builder {
    base.zoomScale = scale
    return self
  }
  
  /// Wrapper of `maximumZoomScale` property setter.
  @discardableResult
  func maximumZoomScale(_ scale: CGFloat) -> Builder {
    base.maximumZoomScale = scale
    return self
  }
  
  /// Wrapper of `minimumZoomScale` property setter.
  @discardableResult
  func minimumZoomScale(_ scale: CGFloat) -> Builder {
    base.minimumZoomScale = scale
    return self
  }
  
  /// Wrapper of `bouncesZoom` property setter.
  @discardableResult
  func bouncesZoom(_ flag: Bool) -> Builder {
    base.bouncesZoom = flag
    return self
  }
  
  // MARK: - Managing the Keyboard
  
  /// Wrapper of `keyboardDismissMode` property setter.
  @discardableResult
  func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Builder {
    base.keyboardDismissMode = mode
    return self
  }
  
  // MARK: - Managing the Index
  
  /// Wrapper of `indexDisplayMode` property setter.
  @discardableResult
  func indexDisplayMode(_ mode: UIScrollView.IndexDisplayMode) -> Builder {
    base.indexDisplayMode = mode
    return self
  }
}

#endif
