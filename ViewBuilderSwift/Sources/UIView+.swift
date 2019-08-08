//
//  UIView+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIView {
  
  // MARK: - Configuring a View's Visual Appearance
  
  @discardableResult
  func backgroundColor(_ backgroundColor: UIColor?) -> UIView {
    self.backgroundColor = backgroundColor
    return self
  }
  
  @discardableResult
  func isHidden(_ isHidden: Bool) -> UIView {
    self.isHidden = isHidden
    return self
  }
  
  @discardableResult
  func alpha(_ alpha: CGFloat) -> UIView {
    self.alpha = alpha
    return self
  }
  
  @discardableResult
  func isOpaque(_ isOpaque: Bool) -> UIView {
    self.isOpaque = isOpaque
    return self
  }
  
  @discardableResult
  func tintColor(_ tintColor: UIColor!) -> UIView {
    self.tintColor = tintColor
    return self
  }
  
  @discardableResult
  func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> UIView {
    self.tintAdjustmentMode = tintAdjustmentMode
    return self
  }
  
  @discardableResult
  func clipsToBounds(_ clipsToBounds: Bool) -> UIView {
    self.clipsToBounds = clipsToBounds
    return self
  }
  
  @discardableResult
  func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> UIView {
    self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
    return self
  }
  
  @discardableResult
  func mask(_ mask: UIView?) -> UIView {
    self.mask = mask
    return self
  }
  
  // MARK: - Configuring the Event-Related Behavior
  
  @discardableResult
  func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> UIView {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self
  }
  
  @discardableResult
  func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> UIView {
    self.isMultipleTouchEnabled = isMultipleTouchEnabled
    return self
  }
  
  @discardableResult
  func isExclusiveTouch(_ isExclusiveTouch: Bool) -> UIView {
    self.isExclusiveTouch = isExclusiveTouch
    return self
  }
  
  // MARK: - Configurint the Bounds and Frame Rectangles
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Int>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.frame = .init(origin: origin, size: size)
    }
    return self
  }
  
  @discardableResult
  func frame(_ rectangle: Rectangle<Double>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.frame = .init(origin: origin, size: size)
    }
    return self
  }
  
  
  @discardableResult
  func frame(_ rectangle: Rectangle<CGFloat>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.frame = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.frame = .init(origin: origin, size: size)
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Int>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.bounds = .init(origin: origin, size: size)
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<Double>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.bounds = .init(origin: origin, size: size)
    }
    return self
  }
  
  @discardableResult
  func bounds(_ rectangle: Rectangle<CGFloat>) -> UIView {
    switch rectangle {
    case let .each(x, y, width, height):
      self.bounds = .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      self.bounds = .init(origin: origin, size: size)
    }
    return self
  }
  
  @discardableResult
  func center(_ point: CGPoint) -> UIView {
    self.center = point
    return self
  }
  
  @discardableResult
  func transform(_ transform: Transform) -> UIView {
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
  func subview(of view: UIView) -> UIView {
    view.addSubview(self)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, at index: Int) -> UIView {
    view.insertSubview(self, at: index)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, above aboveView: UIView) -> UIView {
    view.insertSubview(self, aboveSubview: aboveView)
    return self
  }
  
  @discardableResult
  func subview(of view: UIView, below belowView: UIView) -> UIView {
    view.insertSubview(self, belowSubview: belowView)
    return self
  }
  
  // MARK: - Managing Gesture Recognizers
  
  @discardableResult
  func gestureRecognizer(_ gestureRecognizer: GestureRecognizer) -> UIView {
    switch gestureRecognizer {
    case let .tap(target, action):
      addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case let .pinch(target, action):
      addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case let .rotation(target, action):
      addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case let .swipe(target, action):
      addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case let .pan(target, action):
      addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case let .screenEdgePan(target, action):
      addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case let .longPress(target, action):
      addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
    return self
  }
  
  // MARK: - Identifying the View at Runtime
  
  @discardableResult
  func tag(_ tag: Int) -> UIView {
    self.tag = tag
    return self
  }
}
