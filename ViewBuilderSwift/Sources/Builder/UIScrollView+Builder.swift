//
//  UIScrollView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIScrollView {
  
  // MARK: - Responding to Scroll View Interactions
  
  func delegate<T>(_ delegate: T) -> Builder where T: UIScrollViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Managing the Content Size and Offset
  
  @discardableResult
  func contentSize(_ size: Size<Int>) -> Builder {
    switch size {
    case let .each(width, height):
      base.contentSize = .init(width: width, height: height)
    case let .all(value):
      base.contentSize = .init(width: value, height: value)
    case .zero:
      base.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentSize(_ size: Size<Double>) -> Builder {
    switch size {
    case let .each(width, height):
      base.contentSize = .init(width: width, height: height)
    case let .all(value):
      base.contentSize = .init(width: value, height: value)
    case .zero:
      base.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentSize(_ size: Size<CGFloat>) -> Builder {
    switch size {
    case let .each(width, height):
      base.contentSize = .init(width: width, height: height)
    case let .all(value):
      base.contentSize = .init(width: value, height: value)
    case .zero:
      base.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<Int>) -> Builder {
    switch offset {
    case let .each(x, y):
      base.contentOffset = .init(x: x, y: y)
    case let .all(value):
      base.contentOffset = .init(x: value, y: value)
    case .zero:
      base.contentOffset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<Double>) -> Builder {
    switch offset {
    case let .each(x, y):
      base.contentOffset = .init(x: x, y: y)
    case let .all(value):
      base.contentOffset = .init(x: value, y: value)
    case .zero:
      base.contentOffset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<CGFloat>) -> Builder {
    switch offset {
    case let .each(x, y):
      base.contentOffset = .init(x: x, y: y)
    case let .all(value):
      base.contentOffset = .init(x: value, y: value)
    case .zero:
      base.contentOffset = .zero
    }
    return self
  }
  
  // MARK: - Managing the Content Inset Behavior
  
  @discardableResult
  func contentInset(_ inset: EdgeInsets) -> Builder {
    switch inset {
    case let .each(top, left, bottom, right):
      base.contentInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.contentInset = .init(top: vertical,
                                      left: horizontal,
                                      bottom: vertical,
                                      right: horizontal)
    case let .all(value):
      base.contentInset = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      base.contentInset = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.contentInset = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.contentInset = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.contentInset = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.contentInset = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.contentInset = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.contentInset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentInsetAdjustmentBehavior(
    _ behavior: UIScrollView.ContentInsetAdjustmentBehavior
    ) -> Builder {
    base.contentInsetAdjustmentBehavior = behavior
    return self
  }
  
  // MARK: - Configuring Scroll View
  
  @discardableResult
  func isScrollEnabled(_ flag: Bool) -> Builder {
    base.isScrollEnabled = flag
    return self
  }
  
  @discardableResult
  func isDirectionalLockEnabled(_ flag: Bool) -> Builder {
    base.isDirectionalLockEnabled = flag
    return self
  }
  
  @discardableResult
  func isPagingEnabled(_ flag: Bool) -> Builder {
    base.isPagingEnabled = flag
    return self
  }
  
  @discardableResult
  func scrollsToTop(_ flag: Bool) -> Builder {
    base.scrollsToTop = flag
    return self
  }
  
  @discardableResult
  func bounces(_ flag: Bool) -> Builder {
    base.bounces = flag
    return self
  }
  
  @discardableResult
  func alwaysBounceVertical(_ flag: Bool) -> Builder {
    base.alwaysBounceVertical = flag
    return self
  }
  
  @discardableResult
  func alwaysBounceHorizontal(_ flag: Bool) -> Builder {
    base.alwaysBounceHorizontal = flag
    return self
  }
  
  // MARK: - Managing the Scroll Indicator and Refresh Control
  
  @discardableResult
  func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Builder {
    base.indicatorStyle = style
    return self
  }
  
  @discardableResult
  func scrollIndicatorInsets(_ inset: EdgeInsets) -> Builder {
    switch inset {
    case let .each(top, left, bottom, right):
      base.scrollIndicatorInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.scrollIndicatorInsets = .init(top: vertical,
                                               left: horizontal,
                                               bottom: vertical,
                                               right: horizontal)
    case let .all(value):
      base.scrollIndicatorInsets = .init(top: value,
                                               left: value,
                                               bottom: value,
                                               right: value)
    case let .top(value):
      base.scrollIndicatorInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.scrollIndicatorInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.scrollIndicatorInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.scrollIndicatorInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.scrollIndicatorInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.scrollIndicatorInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.scrollIndicatorInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func showsHorizontalScrollIndicator(_ flag: Bool) -> Builder {
    base.showsHorizontalScrollIndicator = flag
    return self
  }
  
  @discardableResult
  func showsVerticalScrollIndicator(_ flag: Bool) -> Builder {
    base.showsVerticalScrollIndicator = flag
    return self
  }
  
  @discardableResult
  func refreshControl(_ refreshControl: UIRefreshControl?) -> Builder {
    base.refreshControl = refreshControl
    return self
  }
  
  // MARK: - Zooming and Panning
  
  @discardableResult
  func zoomScale(_ scale: CGFloat) -> Builder {
    base.zoomScale = scale
    return self
  }
  
  @discardableResult
  func maximumZoomScale(_ scale: CGFloat) -> Builder {
    base.maximumZoomScale = scale
    return self
  }
  
  @discardableResult
  func minimumZoomScale(_ scale: CGFloat) -> Builder {
    base.minimumZoomScale = scale
    return self
  }
  
  @discardableResult
  func bouncesZoom(_ flag: Bool) -> Builder {
    base.bouncesZoom = flag
    return self
  }
  
  // MARK: - Managing the Keyboard
  
  @discardableResult
  func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Builder {
    base.keyboardDismissMode = mode
    return self
  }
  
  // MARK: - Managing the Index
  
  @discardableResult
  func indexDisplayMode(_ mode: UIScrollView.IndexDisplayMode) -> Builder {
    base.indexDisplayMode = mode
    return self
  }
  
  // MARK: - Build
  
  func build() -> Base {
    return base
  }
}

#endif
