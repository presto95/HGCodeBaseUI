//
//  UIView+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension UIView {
  
  /// Adds `views` to the end of the receiver’s list of subviews.
  func addSubviews(_ views: UIView...) {
    views.forEach { addSubview($0) }
  }
  
  /// Attaches a specified gesture `recognizer` to the view
  /// with a `target` and an `action` selector.
  func addGestureRecognizer(_ recognizer: GestureRecognizer,
                            onTarget target: Any?,
                            action: Selector?) {
    switch recognizer {
    case .tap:
      addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    case .pinch:
      addGestureRecognizer(UIPinchGestureRecognizer(target: target, action: action))
    case .rotation:
      addGestureRecognizer(UIRotationGestureRecognizer(target: target, action: action))
    case .swipe:
      addGestureRecognizer(UISwipeGestureRecognizer(target: target, action: action))
    case .pan:
      addGestureRecognizer(UIPanGestureRecognizer(target: target, action: action))
    case .screenEdgePan:
      addGestureRecognizer(UIScreenEdgePanGestureRecognizer(target: target, action: action))
    case .longPress:
      addGestureRecognizer(UILongPressGestureRecognizer(target: target, action: action))
    }
  }
}

/// Defines gesture recognizers.
public enum GestureRecognizer {
  
  /// Represents `UITapGestureRecognizer`.
  case tap
  
  /// Represents `UIPinchGestureRecognizer`.
  case pinch
  
  /// Represents `UIRotationGestureRecognizer`.
  case rotation
  
  /// Represents `UISwipeGestureRecognizer`.
  case swipe
  
  /// Represents `UIPanGestureRecognizer`.
  case pan
  
  /// Represents `UIScreenEdgePanGestureRecognizer`.
  case screenEdgePan
  
  /// Represents `UILongPressGestureRecognizer`.
  case longPress
}
