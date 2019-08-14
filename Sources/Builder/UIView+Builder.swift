//
//  UIView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

import SnapKit

public extension Builder where Base: UIView {
  
  // MARK: - Helper
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `plain` case for `tintColor` property setter.
  /// - `background` case for `backgroundColor` property setter.
  @discardableResult
  func color(_ color: ViewBuilder.Color) -> Builder {
    switch color {
    case let .each(plain, background):
      base.tintColor = plain
      base.backgroundColor = background
    case let .plain(plain):
      base.tintColor = plain
    case let .background(background):
      base.backgroundColor = background
    }
    return self
  }
  
  /// Helper of `frame` property setter.
  @discardableResult
  func frame(_ rectangle: Rectangle<Int>) -> Builder {
    base.frame = rectangle.cgRect
    return self
  }
  
  /// Helper of `frame` property setter.
  @discardableResult
  func frame(_ rectangle: Rectangle<Double>) -> Builder {
    base.frame = rectangle.cgRect
    return self
  }
  
  /// Helper of `frame` property setter.
  @discardableResult
  func frame(_ rectangle: Rectangle<CGFloat>) -> Builder {
    base.frame = rectangle.cgRect
    return self
  }
  
  /// Helper of `bounds` property setter.
  @discardableResult
  func bounds(_ rectangle: Rectangle<Int>) -> Builder {
    base.bounds = rectangle.cgRect
    return self
  }
  
  /// Helper of `bounds` property setter.
  @discardableResult
  func bounds(_ rectangle: Rectangle<Double>) -> Builder {
    base.bounds = rectangle.cgRect
    return self
  }
  
  /// Helper of `bounds` property setter.
  @discardableResult
  func bounds(_ rectangle: Rectangle<CGFloat>) -> Builder {
    base.bounds = rectangle.cgRect
    return self
  }
  
  /// Helper of `center` property setter.
  @discardableResult
  func center(_ point: Point<Int>) -> Builder {
    base.center = point.cgPoint
    return self
  }
  
  /// Helper of `center` property setter.
  @discardableResult
  func center(_ point: Point<Double>) -> Builder {
    base.center = point.cgPoint
    return self
  }
  
  /// Helper of `center` property setter.
  @discardableResult
  func center(_ point: Point<CGFloat>) -> Builder {
    base.center = point.cgPoint
    return self
  }
  
  /// Helper of `transform` property setter.
  @discardableResult
  func transform(_ transform: ViewBuilder.Transform) -> Builder {
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
  
  /// Helper of `addSubview(_:)` method.
  ///
  /// By using `constraintMaker` closure depends on SnapKit,
  /// It guarantees that constraints are set after the view is added.
  @discardableResult
  func subview(of view: UIView, constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    view.addSubview(base)
    base.snp.makeConstraints(constraintMaker)
    return self
  }
  
  /// Helper of `insertSubview(_:at:)` method.
  ///
  /// By using `constraintMaker` closure depends on SnapKit,
  /// It guarantees that constraints are set after the view is added.
  @discardableResult
  func subview(of view: UIView,
               at index: Int,
               constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    view.insertSubview(base, at: index)
    base.snp.makeConstraints(constraintMaker)
    return self
  }
  
  /// Helper of `insertSubview(_:aboveSubview:)` method.
  ///
  /// By using `constraintMaker` closure depends on SnapKit,
  /// It guarantees that constraints are set after the view is added.
  @discardableResult
  func subview(of view: UIView,
               above aboveView: UIView,
               constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    view.insertSubview(base, aboveSubview: aboveView)
    base.snp.makeConstraints(constraintMaker)
    return self
  }
  
  /// Helper of `insertSubview(_:belowSubview:)` method.
  ///
  /// By using `constraintMaker` closure depends on SnapKit,
  /// It guarantees that constraints are set after the view is added.
  @discardableResult
  func subview(of view: UIView,
               below belowView: UIView,
               constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    view.insertSubview(base, belowSubview: belowView)
    base.snp.makeConstraints(constraintMaker)
    return self
  }
  
  /// Helper of `constraints` property setter.
  ///
  /// It uses `makeConstraints(_:)` method of SnapKit.
  @discardableResult
  func constraints(_ constraintMaker: (ConstraintMaker) -> Void) -> Builder {
    base.snp.makeConstraints(constraintMaker)
    return self
  }

  /// Helper of `addGestureRecognizer(_:)` method.
  ///
  /// - `tap` case for `UITapGestureRecognizer`.
  /// - `pinch` case for `UIPinchGestureRecognizer`.
  /// - `rotation` case for `UIRotationGestureRecognizer`.
  /// - `swipe` case for `UISwipeGestureRecognizer`.
  /// - `pan` case for `UIPanGestureRecognizer`.
  /// - `screenEdgePan` case for `UIScreenEdgePanGestureRecognizer`.
  /// - `longPress` case for `UILongPressGestureRecognizer`.
  @discardableResult
  func gestureRecognizer(_ gestureRecognizer: ViewBuilder.GestureRecognizer,
                         target: Any?,
                         action: Selector) -> Builder {
    switch gestureRecognizer {
    case .tap:
      base.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case .pinch:
      base.addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case .rotation:
      base.addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case .swipe:
      base.addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case .pan:
      base.addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case .screenEdgePan:
      base.addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case .longPress:
      base.addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
    return self
  }
  
  // MARK: - Configuring a View's Visual Appearance
  
  /// Wrapper of `backgroundColor` property setter.
  @discardableResult
  func backgroundColor(_ color: UIColor?) -> Builder {
    base.backgroundColor = color
    return self
  }
  
  /// Wrapper of `isHidden` property setter.
  @discardableResult
  func isHidden(_ flag: Bool) -> Builder {
    base.isHidden = flag
    return self
  }
  
  /// Wrapper of `alpha` property setter.
  @discardableResult
  func alpha(_ alpha: CGFloat) -> Builder {
    base.alpha = alpha
    return self
  }
  
  /// Wrapper of `isOpaque` property setter.
  @discardableResult
  func isOpaque(_ flag: Bool) -> Builder {
    base.isOpaque = flag
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `tintAdjustmentMode` property setter.
  @discardableResult
  func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> Builder {
    base.tintAdjustmentMode = mode
    return self
  }
  
  /// Wrapper of `clipsToBounds` property setter.
  @discardableResult
  func clipsToBounds(_ flag: Bool) -> Builder {
    base.clipsToBounds = flag
    return self
  }
  
  /// Wrapper of `clearsContextBeforeDrawing` property setter.
  @discardableResult
  func clearsContextBeforeDrawing(_ flag: Bool) -> Builder {
    base.clearsContextBeforeDrawing = flag
    return self
  }
  
  /// Wrapper of `mask` property setter.
  @discardableResult
  func mask(_ mask: UIView?) -> Builder {
    base.mask = mask
    return self
  }
  
  // MARK: - Configuring the Event-Related Behavior
  
  /// Wrapper of `isUserInteractionEnabled` property setter.
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Builder {
    base.isUserInteractionEnabled = flag
    return self
  }
  
  /// Wrapper of `isMultipleTouchEnabled` property setter.
  @discardableResult
  func isMultipleTouchEnabled(_ flag: Bool) -> Builder {
    base.isMultipleTouchEnabled = flag
    return self
  }
  
  /// Wrapper of `isExclusiveTouch` property setter.
  @discardableResult
  func isExclusiveTouch(_ flag: Bool) -> Builder {
    base.isExclusiveTouch = flag
    return self
  }
  
  // MARK: - Configuring the Bounds and Frame Rectangles
  
  /// Wrapper of `frame` property setter.
  @discardableResult
  func frame(_ frame: CGRect) -> Builder {
    base.frame = frame
    return self
  }
  
  /// Wrapper of `bounds` property setter.
  @discardableResult
  func bounds(_ bounds: CGRect) -> Builder {
    base.bounds = bounds
    return self
  }
  
  /// Wrapper of `center` property setter.
  @discardableResult
  func center(_ center: CGPoint) -> Builder {
    base.center = center
    return self
  }
  
  /// Wrapper of `transform` property setter.
  @discardableResult
  func transform(_ transform: CGAffineTransform) -> Builder {
    base.transform = transform
    return self
  }
  
  // MARK: - Managing the View Hierarchy
  
  /// Wrapper of `addSubview(_:)` method.
  @discardableResult
  func subview(of view: UIView) -> Builder {
    view.addSubview(base)
    return self
  }
  
  /// Wrapper of `insertSubview(_:at:)` method.
  @discardableResult
  func subview(of view: UIView, at index: Int) -> Builder {
    view.insertSubview(base, at: index)
    return self
  }
  
  /// Wrapper of `insertSubview(_:aboveSubview:)` method.
  @discardableResult
  func subview(of view: UIView, aboveSubview aboveView: UIView) -> Builder {
    view.insertSubview(base, aboveSubview: aboveView)
    return self
  }
  
  /// Wrapper of `insertSubview(_:belowSubview:)` method.
  @discardableResult
  func subview(of view: UIView, belowSubview belowView: UIView) -> Builder {
    view.insertSubview(base, belowSubview: belowView)
    return self
  }

  // MARK: - Managing the View's Constraints
  
  /// Wrapper of `addConstraint(_:)` method.
  @discardableResult
  func constraint(_ constraint: NSLayoutConstraint) -> Builder {
    base.addConstraint(constraint)
    return self
  }
  
  /// Wrapper of `addContraints(_:)` method.
  @discardableResult
  func constraints(_ constraints: [NSLayoutConstraint]) -> Builder {
    base.addConstraints(constraints)
    return self
  }
  
  // MARK: - Configuring the Resizing Behavior
  
  /// Wrapper of `contentMode` property setter.
  @discardableResult
  func contentMode(_ mode: UIView.ContentMode) -> Builder {
    base.contentMode = mode
    return self
  }
  
  /// Wrapper of `autoresizesSubviews` property setter.
  @discardableResult
  func autoresizesSubviews(_ flag: Bool) -> Builder {
    base.autoresizesSubviews = flag
    return self
  }
  
  /// Wrapper of `autoresizingMask` property setter.
  @discardableResult
  func autoresizingMask(_ mask: UIView.AutoresizingMask) -> Builder {
    base.autoresizingMask = mask
    return self
  }
  
  /// MARK: - Laying out Subviews
  
  /// Wrapper of `translatesAutoresizingMaskIntoConstraints` property setter.
  
  @discardableResult
  func translatesAutoresizingMaskIntoConstraints(_ flag: Bool) -> Builder {
    base.translatesAutoresizingMaskIntoConstraints = flag
    return self
  }
  
  // MARK: - Managing the User Interface Direction
  
  /// Wrapper of `semanticContentAttributes` property setter.
  @discardableResult
  func semanticContentAttributes(_ attribute: UISemanticContentAttribute) -> Builder {
    base.semanticContentAttribute = attribute
    return self
  }
  
  /// MARK: - Adding and Removing Interactions
  
  /// Wrapper of `addInteraction(_:)` method.
  @discardableResult
  func interaction(_ interaction: UIInteraction) -> Builder {
    base.addInteraction(interaction)
    return self
  }
  
  /// Wrapper of `interactions` property setter.
  @discardableResult
  func interactions(_ interactions: [UIInteraction]) -> Builder {
    base.interactions = interactions
    return self
  }
  
  // MARK: - Drawing and Updating the View
  
  /// Wrapper of `contentScaleFactor` property setter.
  @discardableResult
  func contentScaleFactor(_ factor: CGFloat) -> Builder {
    base.contentScaleFactor = factor
    return self
  }
  
  // MARK: - Managing Gesture Recognizers
  
  /// Wrapper of `addGestureRecognizer(_:)` method.
  @discardableResult
  func gestureRecognizer(_ recognizer: UIGestureRecognizer) -> Builder {
    base.addGestureRecognizer(recognizer)
    return self
  }
  
  /// Wrapper of `gestureRecognizers` property setter.
  @discardableResult
  func gestureRecognizers(_ recognizers: [UIGestureRecognizer]) -> Builder {
    base.gestureRecognizers = recognizers
    return self
  }
  
  // MARK: - Using Motion Effects
  
  /// Wrapper of `addMotionEffect(_:)` method.
  @discardableResult
  func motionEffect(_ effect: UIMotionEffect) -> Builder {
    base.addMotionEffect(effect)
    return self
  }
  
  /// Wrapper of `motionEffects` property setter.
  @discardableResult
  func motionEffects(_ effects: [UIMotionEffect]) -> Builder {
    base.motionEffects = effects
    return self
  }
  
  // MARK: - Preserving and Restoring State
  
  /// Wrapper of `restorationIdentifier` property setter.
  @discardableResult
  func restorationIdentifier(_ identifier: String?) -> Builder {
    base.restorationIdentifier = identifier
    return self
  }
  
  // MARK: - Identifying the View at Runtime
  
  @discardableResult
  func tag(_ tag: Int) -> Builder {
    base.tag = tag
    return self
  }
  
  // MARK: - Modifying the Accessibility Behavior
  
  /// Wrapper of `accessibilityIgnoresInvertColors` property setter.
  @discardableResult
  func accessibilityIgnoresInvertColors(_ flag: Bool) -> Builder {
    base.accessibilityIgnoresInvertColors = flag
    return self
  }
}

#endif
