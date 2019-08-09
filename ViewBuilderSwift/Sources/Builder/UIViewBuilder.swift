//
//  UIViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import SnapKit

public extension UIView {
  
  @discardableResult
  func builder() -> UIViewBuilder {
    return .init(view: self)
  }
}

public final class UIViewBuilder {
  
  private let view: UIView
  
  init() {
    view = .init()
  }
  
  init(view: UIView) {
    self.view = view
  }
  
  // MARK: - Configuring a View's Visual Appearance
  
  @discardableResult
  func backgroundColor(_ backgroundColor: UIColor?) -> UIViewBuilder {
    view.backgroundColor = backgroundColor
    return self
  }
  
  @discardableResult
  func isHidden(_ flag: Bool) -> UIViewBuilder {
    view.isHidden = flag
    return self
  }
  
  @discardableResult
  func alpha(_ alpha: CGFloat) -> UIViewBuilder {
    view.alpha = alpha
    return self
  }
  
  @discardableResult
  func isOpaque(_ flag: Bool) -> UIViewBuilder {
    view.isOpaque = flag
    return self
  }
  
  @discardableResult
  func tintColor(_ tintColor: UIColor!) -> UIViewBuilder {
    view.tintColor = tintColor
    return self
  }
  
  @discardableResult
  func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> UIViewBuilder {
    view.tintAdjustmentMode = mode
    return self
  }
  
  @discardableResult
  func clipsToBounds(_ flag: Bool) -> UIViewBuilder {
    view.clipsToBounds = flag
    return self
  }
  
  @discardableResult
  func clearsContextBeforeDrawing(_ flag: Bool) -> UIViewBuilder {
    view.clearsContextBeforeDrawing = flag
    return self
  }
  
  @discardableResult
  func mask(_ mask: UIView?) -> UIViewBuilder {
    view.mask = mask
    return self
  }
  
  // MARK: - Configuring the Event-Related Behavior
  
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> UIViewBuilder {
    view.isUserInteractionEnabled = flag
    return self
  }
  
  @discardableResult
  func isMultipleTouchEnabled(_ flag: Bool) -> UIViewBuilder {
    view.isMultipleTouchEnabled = flag
    return self
  }
  
  @discardableResult
  func isExclusiveTouch(_ flag: Bool) -> UIViewBuilder {
    view.isExclusiveTouch = flag
    return self
  }
  
  // MARK: - Configuring the Bounds and Frame Rectangles
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Int>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.frame = .zero
      }
    case let .all(value):
      view.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Double>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.frame = .zero
      }
    case let .all(value):
      view.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<CGFloat>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.frame = .zero
      }
    case let .all(value):
      view.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Int>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.bounds = .zero
      }
    case let .all(value):
      view.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Double>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.bounds = .zero
      }
    case let .all(value):
      view.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<CGFloat>) -> UIViewBuilder {
    switch rectangle {
    case let .each(x, y, width, height):
      view.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        view.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        view.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        view.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        view.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        view.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        view.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        view.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        view.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        view.bounds = .zero
      }
    case let .all(value):
      view.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      view.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Int>) -> UIViewBuilder {
    switch point {
    case let .each(x, y):
      view.center = .init(x: x, y: y)
    case let .all(value):
      view.center = .init(x: value, y: value)
    case .zero:
      view.center = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Double>) -> UIViewBuilder {
    switch point {
    case let .each(x, y):
      view.center = .init(x: x, y: y)
    case let .all(value):
      view.center = .init(x: value, y: value)
    case .zero:
      view.center = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<CGFloat>) -> UIViewBuilder {
    switch point {
    case let .each(x, y):
      view.center = .init(x: x, y: y)
    case let .all(value):
      view.center = .init(x: value, y: value)
    case .zero:
      view.center = .zero
    }
    return self
  }
  
  @discardableResult
  func transform(_ transform: Transform) -> UIViewBuilder {
    switch transform {
    case let .rotation(angle):
      view.transform = .init(rotationAngle: angle)
    case let .scale(x, y):
      view.transform = .init(scaleX: x, y: y)
    case let .translation(x, y):
      view.transform = .init(translationX: x, y: y)
    case .identity:
      view.transform = .identity
    }
    return self
  }
  
  // MARK: - Managing the View Hierarchy
  
  @discardableResult
  func subview(of parentView: UIView) -> UIViewBuilder {
    parentView.addSubview(view)
    return self
  }
  
  @discardableResult
  func subview(of parentView: UIView, at index: Int) -> UIViewBuilder {
    parentView.insertSubview(view, at: index)
    return self
  }
  
  @discardableResult
  func subview(of parentView: UIView, above aboveView: UIView) -> UIViewBuilder {
    parentView.insertSubview(view, aboveSubview: aboveView)
    return self
  }
  
  @discardableResult
  func subview(of parentView: UIView, below belowView: UIView) -> UIViewBuilder {
    parentView.insertSubview(view, belowSubview: belowView)
    return self
  }
  
  // MARK: - Managing the View's Constraints
  
  @discardableResult
  func constraints(_ constraintMaker: (ConstraintMaker) -> Void) -> UIViewBuilder {
    view.snp.makeConstraints(constraintMaker)
    return self
  }
  
  // MARK: - Managing Gesture Recognizers
  
  @discardableResult
  func gestureRecognizer(_ gestureRecognizer: GestureRecognizer) -> UIViewBuilder {
    switch gestureRecognizer {
    case let .tap(target, action):
      view.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case let .pinch(target, action):
      view.addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case let .rotation(target, action):
      view.addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case let .swipe(target, action):
      view.addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case let .pan(target, action):
      view.addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case let .screenEdgePan(target, action):
      view.addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case let .longPress(target, action):
      view.addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
    return self
  }
  
  // MARK: - Identifying the View at Runtime
  
  @discardableResult
  func tag(_ tag: Int) -> UIViewBuilder {
    view.tag = tag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIView {
    return view
  }
}
