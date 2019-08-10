//
//  UIView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

import SnapKit

extension Builder where Base: UIView {
  
  // MARK: - Configuring a View's Visual Appearance
  
  @discardableResult
  func backgroundColor(_ backgroundColor: UIColor?) -> Builder {
    base.backgroundColor = backgroundColor
    return self
  }
  
  @discardableResult
  func isHidden(_ flag: Bool) -> Builder {
    base.isHidden = flag
    return self
  }
  
  @discardableResult
  func alpha(_ alpha: CGFloat) -> Builder {
    base.alpha = alpha
    return self
  }
  
  @discardableResult
  func isOpaque(_ flag: Bool) -> Builder {
    base.isOpaque = flag
    return self
  }
  
  @discardableResult
  func tintColor(_ tintColor: UIColor!) -> Builder {
    base.tintColor = tintColor
    return self
  }
  
  @discardableResult
  func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> Builder {
    base.tintAdjustmentMode = mode
    return self
  }
  
  @discardableResult
  func clipsToBounds(_ flag: Bool) -> Builder {
    base.clipsToBounds = flag
    return self
  }
  
  @discardableResult
  func clearsContextBeforeDrawing(_ flag: Bool) -> Builder {
    base.clearsContextBeforeDrawing = flag
    return self
  }
  
  @discardableResult
  func mask(_ mask: UIView?) -> Builder {
    base.mask = mask
    return self
  }
  
  // MARK: - Configuring the Event-Related Behavior
  
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Builder {
    base.isUserInteractionEnabled = flag
    return self
  }
  
  @discardableResult
  func isMultipleTouchEnabled(_ flag: Bool) -> Builder {
    base.isMultipleTouchEnabled = flag
    return self
  }
  
  @discardableResult
  func isExclusiveTouch(_ flag: Bool) -> Builder {
    base.isExclusiveTouch = flag
    return self
  }
  
  // MARK: - Configuring the Bounds and Frame Rectangles
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Int>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.frame = .zero
      }
    case let .all(value):
      base.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Double>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.frame = .zero
      }
    case let .all(value):
      base.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<CGFloat>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.frame = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.frame = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.frame = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.frame = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.frame = .zero
      }
    case let .all(value):
      base.frame = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.frame = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Int>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.bounds = .zero
      }
    case let .all(value):
      base.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Double>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.bounds = .zero
      }
    case let .all(value):
      base.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<CGFloat>) -> Builder {
    switch rectangle {
    case let .each(x, y, width, height):
      base.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        base.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        base.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.each(x, y), .zero):
        base.bounds = .init(origin: .init(x: x, y: y), size: .zero)
      case let (.all(value), .each(width, height)):
        base.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        base.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      case let (.all(value), .zero):
        base.bounds = .init(origin: .init(x: value, y: value), size: .zero)
      case let (.zero, .each(width, height)):
        base.bounds = .init(origin: .zero, size: .init(width: width, height: height))
      case let (.zero, .all(value)):
        base.bounds = .init(origin: .zero, size: .init(width: value, height: value))
      case (.zero, .zero):
        base.bounds = .zero
      }
    case let .all(value):
      base.bounds = .init(x: value, y: value, width: value, height: value)
    case .zero:
      base.bounds = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Int>) -> Builder {
    switch point {
    case let .each(x, y):
      base.center = .init(x: x, y: y)
    case let .all(value):
      base.center = .init(x: value, y: value)
    case .zero:
      base.center = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Double>) -> Builder {
    switch point {
    case let .each(x, y):
      base.center = .init(x: x, y: y)
    case let .all(value):
      base.center = .init(x: value, y: value)
    case .zero:
      base.center = .zero
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<CGFloat>) -> Builder {
    switch point {
    case let .each(x, y):
      base.center = .init(x: x, y: y)
    case let .all(value):
      base.center = .init(x: value, y: value)
    case .zero:
      base.center = .zero
    }
    return self
  }
  
  @discardableResult
  func transform(_ transform: Transform) -> Builder {
    switch transform {
    case let .rotation(angle):
      base.transform = .init(rotationAngle: angle)
    case let .scale(x, y):
      base.transform = .init(scaleX: x, y: y)
    case let .translation(x, y):
      base.transform = .init(translationX: x, y: y)
    case .identity:
      base.transform = .identity
    }
    return self
  }
  
  // MARK: - Managing the View Hierarchy
  
  @discardableResult
  func subview(of view: UIView, constraintMaker: ((ConstraintMaker) -> Void)? = nil) -> Builder {
    view.addSubview(base)
    if let maker = constraintMaker {
      base.snp.makeConstraints(maker)
    }
    return self
  }
  
  @discardableResult
  func subview(of view: UIView,
               at index: Int,
               constraintMaker: ((ConstraintMaker) -> Void)? = nil) -> Builder {
    view.insertSubview(base, at: index)
    if let maker = constraintMaker {
      base.snp.makeConstraints(maker)
    }
    return self
  }
  
  @discardableResult
  func subview(of view: UIView,
               above aboveView: UIView,
               constraintMaker: ((ConstraintMaker) -> Void)? = nil) -> Builder {
    view.insertSubview(base, aboveSubview: aboveView)
    if let maker = constraintMaker {
      base.snp.makeConstraints(maker)
    }
    return self
  }
  
  @discardableResult
  func subview(of view: UIView,
               below belowView: UIView,
               constraintMaker: ((ConstraintMaker) -> Void)? = nil) -> Builder {
    view.insertSubview(base, belowSubview: belowView)
    if let maker = constraintMaker {
      base.snp.makeConstraints(maker)
    }
    return self
  }
  
  // MARK: - Managing the View's Constraints
  
  @discardableResult
  func constraints(_ constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    base.snp.makeConstraints(constraintMaker)
    return self
  }
  
  // MARK: - Managing Gesture Recognizers
  
  @discardableResult
  func gestureRecognizer(_ gestureRecognizer: GestureRecognizer) -> Builder {
    switch gestureRecognizer {
    case let .tap(target, action):
      base.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case let .pinch(target, action):
      base.addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case let .rotation(target, action):
      base.addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case let .swipe(target, action):
      base.addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case let .pan(target, action):
      base.addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case let .screenEdgePan(target, action):
      base.addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case let .longPress(target, action):
      base.addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
    return self
  }
  
  // MARK: - Identifying the View at Runtime
  
  @discardableResult
  func tag(_ tag: Int) -> Builder {
    base.tag = tag
    return self
  }
}

#endif
