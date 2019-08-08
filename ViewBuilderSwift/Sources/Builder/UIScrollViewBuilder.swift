//
//  UIScrollViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

internal final class UIScrollViewBuilder {
  
  private let scrollView: UIScrollView
  
  init() {
    scrollView = .init()
  }
  
  // MARK: - Responding to Scroll View Interactions
  
  func delegate<T>(_ delegate: T) -> UIScrollViewBuilder where T: UIScrollViewDelegate {
    scrollView.delegate = delegate
    return self
  }
  
  // MARK: - Managing the Content Size and Offset
  
  @discardableResult
  func contentSize(_ size: Size<Int>) -> UIScrollViewBuilder {
    switch size {
    case let .each(width, height):
      scrollView.contentSize = .init(width: width, height: height)
    case let .all(value):
      scrollView.contentSize = .init(width: value, height: value)
    case .zero:
      scrollView.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentSize(_ size: Size<Double>) -> UIScrollViewBuilder {
    switch size {
    case let .each(width, height):
      scrollView.contentSize = .init(width: width, height: height)
    case let .all(value):
      scrollView.contentSize = .init(width: value, height: value)
    case .zero:
      scrollView.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentSize(_ size: Size<CGFloat>) -> UIScrollViewBuilder {
    switch size {
    case let .each(width, height):
      scrollView.contentSize = .init(width: width, height: height)
    case let .all(value):
      scrollView.contentSize = .init(width: value, height: value)
    case .zero:
      scrollView.contentSize = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<Int>) -> UIScrollViewBuilder {
    switch offset {
    case let .each(x, y):
      scrollView.contentOffset = .init(x: x, y: y)
    case let .all(value):
      scrollView.contentOffset = .init(x: value, y: value)
    case .zero:
      scrollView.contentOffset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<Double>) -> UIScrollViewBuilder {
    switch offset {
    case let .each(x, y):
      scrollView.contentOffset = .init(x: x, y: y)
    case let .all(value):
      scrollView.contentOffset = .init(x: value, y: value)
    case .zero:
      scrollView.contentOffset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Point<CGFloat>) -> UIScrollViewBuilder {
    switch offset {
    case let .each(x, y):
      scrollView.contentOffset = .init(x: x, y: y)
    case let .all(value):
      scrollView.contentOffset = .init(x: value, y: value)
    case .zero:
      scrollView.contentOffset = .zero
    }
    return self
  }
  
  // MARK: - Managing the Content Inset Behavior
  
  @discardableResult
  func contentInset(_ inset: EdgeInsets) -> UIScrollViewBuilder {
    switch inset {
    case let .each(top, left, bottom, right):
      scrollView.contentInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      scrollView.contentInset = .init(top: vertical,
                                      left: horizontal,
                                      bottom: vertical,
                                      right: horizontal)
    case let .all(value):
      scrollView.contentInset = .init(top: value, left: value, bottom: value, right: value)
    case .zero:
      scrollView.contentInset = .zero
    }
    return self
  }
  
  @discardableResult
  func contentInsetAdjustmentBehavior(
    _ behavior: UIScrollView.ContentInsetAdjustmentBehavior
  ) -> UIScrollViewBuilder {
    scrollView.contentInsetAdjustmentBehavior = behavior
    return self
  }
  
  // MARK: - Configuring Scroll View
  
  @discardableResult
  func isScrollEnabled(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.isScrollEnabled = flag
    return self
  }
  
  @discardableResult
  func isDirectionalLockEnabled(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.isDirectionalLockEnabled = flag
    return self
  }
  
  @discardableResult
  func isPagingEnabled(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.isPagingEnabled = flag
    return self
  }
  
  @discardableResult
  func scrollsToTop(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.scrollsToTop = flag
    return self
  }
  
  @discardableResult
  func bounces(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.bounces = flag
    return self
  }
  
  @discardableResult
  func alwaysBounceVertical(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.alwaysBounceVertical = flag
    return self
  }
  
  @discardableResult
  func alwaysBounceHorizontal(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.alwaysBounceHorizontal = flag
    return self
  }
  
  // MARK: - Managing the Scroll Indicator and Refresh Control
  
  @discardableResult
  func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> UIScrollViewBuilder {
    scrollView.indicatorStyle = style
    return self
  }
  
  @discardableResult
  func scrollIndicatorInsets(_ inset: EdgeInsets) -> UIScrollViewBuilder {
    switch inset {
    case let .each(top, left, bottom, right):
      scrollView.scrollIndicatorInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      scrollView.scrollIndicatorInsets = .init(top: vertical,
                                               left: horizontal,
                                               bottom: vertical,
                                               right: horizontal)
    case let .all(value):
      scrollView.scrollIndicatorInsets = .init(top: value,
                                               left: value,
                                               bottom: value,
                                               right: value)
    case .zero:
      scrollView.scrollIndicatorInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func showsHorizontalScrollIndicator(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.showsHorizontalScrollIndicator = flag
    return self
  }
  
  @discardableResult
  func showsVerticalScrollIndicator(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.showsVerticalScrollIndicator = flag
    return self
  }
  
  @discardableResult
  func refreshControl(_ refreshControl: UIRefreshControl?) -> UIScrollViewBuilder {
    scrollView.refreshControl = refreshControl
    return self
  }
  
  // MARK: - Zooming and Panning
  
  @discardableResult
  func zoomScale(_ scale: CGFloat) -> UIScrollViewBuilder {
    scrollView.zoomScale = scale
    return self
  }
  
  @discardableResult
  func maximumZoomScale(_ scale: CGFloat) -> UIScrollViewBuilder {
    scrollView.maximumZoomScale = scale
    return self
  }
  
  @discardableResult
  func minimumZoomScale(_ scale: CGFloat) -> UIScrollViewBuilder {
    scrollView.minimumZoomScale = scale
    return self
  }
  
  @discardableResult
  func bouncesZoom(_ flag: Bool) -> UIScrollViewBuilder {
    scrollView.bouncesZoom = flag
    return self
  }
  
  // MARK: - Managing the Keyboard
  
  @discardableResult
  func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> UIScrollViewBuilder {
    scrollView.keyboardDismissMode = mode
    return self
  }
  
  // MARK: - Managing the Index
  
  @discardableResult
  func indexDisplayMode(_ mode: UIScrollView.IndexDisplayMode) -> UIScrollViewBuilder {
    scrollView.indexDisplayMode = mode
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIScrollView {
    return scrollView
  }
}
