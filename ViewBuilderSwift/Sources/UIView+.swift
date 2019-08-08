//
//  UIView+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

import SnapKit

extension UIView {
  
  // MARK: - Configuring a View's Visual Appearance
  
  @discardableResult
  func backgroundColor(_ backgroundColor: UIColor?) -> Self {
    self.backgroundColor = backgroundColor
    return self
  }
  
  @discardableResult
  func isHidden(_ flag: Bool) -> Self {
    self.isHidden = flag
    return self
  }
  
  @discardableResult
  func alpha(_ alpha: CGFloat) -> Self {
    self.alpha = alpha
    return self
  }
  
  @discardableResult
  func isOpaque(_ flag: Bool) -> Self {
    self.isOpaque = flag
    return self
  }
  
  @discardableResult
  func tintColor(_ tintColor: UIColor!) -> Self {
    self.tintColor = tintColor
    return self
  }
  
  @discardableResult
  func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> Self {
    self.tintAdjustmentMode = mode
    return self
  }
  
  @discardableResult
  func clipsToBounds(_ flag: Bool) -> Self {
    self.clipsToBounds = flag
    return self
  }
  
  @discardableResult
  func clearsContextBeforeDrawing(_ flag: Bool) -> Self {
    self.clearsContextBeforeDrawing = flag
    return self
  }
  
  @discardableResult
  func mask(_ mask: UIView?) -> Self {
    self.mask = mask
    return self
  }
  
  // MARK: - Configuring the Event-Related Behavior
  
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Self {
    self.isUserInteractionEnabled = flag
    return self
  }
  
  @discardableResult
  func isMultipleTouchEnabled(_ flag: Bool) -> Self {
    self.isMultipleTouchEnabled = flag
    return self
  }
  
  @discardableResult
  func isExclusiveTouch(_ flag: Bool) -> Self {
    self.isExclusiveTouch = flag
    return self
  }
  
  // MARK: - Configuring the Bounds and Frame Rectangles
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Int>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.frame = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Double>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.frame = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }
  
  
  @discardableResult
  func frame(_ rectangle: Rectangle<CGFloat>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.frame = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.frame = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.frame = .init(origin: .init(x: value, y: value),
                           size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.frame = .init(origin: .init(x: originValue, y: originValue),
                           size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.frame = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Int>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.bounds = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }

  @discardableResult
  func bounds(_ rectangle: Rectangle<Double>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.bounds = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<CGFloat>) -> Self {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        self.bounds = .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        self.bounds = .init(origin: .init(x: x, y: y), size: .init(width: value, height: value))
      case let (.all(value), .each(width, height)):
        self.bounds = .init(origin: .init(x: value, y: value),
                            size: .init(width: width, height: height))
      case let (.all(originValue), .all(sizeValue)):
        self.bounds = .init(origin: .init(x: originValue, y: originValue),
                            size: .init(width: sizeValue, height: sizeValue))
      }
    case let .all(value):
      self.bounds = .init(x: value, y: value, width: value, height: value)
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Int>) -> Self {
    switch point {
    case let .each(x, y):
      self.center = .init(x: x, y: y)
    case let .all(value):
      self.center = .init(x: value, y: value)
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<Double>) -> Self {
    switch point {
    case let .each(x, y):
      self.center = .init(x: x, y: y)
    case let .all(value):
      self.center = .init(x: value, y: value)
    }
    return self
  }
  
  @discardableResult
  func center(_ point: Point<CGFloat>) -> Self {
    switch point {
    case let .each(x, y):
      self.center = .init(x: x, y: y)
    case let .all(value):
      self.center = .init(x: value, y: value)
    }
    return self
  }
  
  @discardableResult
  func transform(_ transform: Transform) -> Self {
    switch transform {
    case let .rotation(angle):
      self.transform = .init(rotationAngle: angle)
    case let .scale(x, y):
      self.transform = .init(scaleX: x, y: y)
    case let .translation(x, y):
      self.transform = .init(translationX: x, y: y)
    case .identity:
      self.transform = .identity
    }
    return self
  }
  
  // MARK: - Managing the View Hierarchy
  
  @discardableResult
  func subview(of view: UIView) -> Self {
    view.addSubview(self)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, at index: Int) -> Self {
    view.insertSubview(self, at: index)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, above aboveView: UIView) -> Self {
    view.insertSubview(self, aboveSubview: aboveView)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, below belowView: UIView) -> Self {
    view.insertSubview(self, belowSubview: belowView)
    return self
  }
  
  // MARK: - Managing the View's Constraints
  
  @discardableResult
  func constraints(_ constraintMaker: (ConstraintMaker) -> Void) -> Self {
    self.snp.makeConstraints(constraintMaker)
    return self
  }
  
  // MARK: - Managing Gesture Recognizers
  
  @discardableResult
  func gestureRecognizer(_ gestureRecognizer: GestureRecognizer) -> Self {
    switch gestureRecognizer {
    case let .tap(target, action):
      self.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case let .pinch(target, action):
      self.addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case let .rotation(target, action):
      self.addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case let .swipe(target, action):
      self.addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case let .pan(target, action):
      self.addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case let .screenEdgePan(target, action):
      self.addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case let .longPress(target, action):
      self.addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
    return self
  }
  
  // MARK: - Identifying the View at Runtime
  
  @discardableResult
  func tag(_ tag: Int) -> Self {
    self.tag = tag
    return self
  }
}
