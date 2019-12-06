//
//  UIEdgeInsets+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension UIEdgeInsets {
  /// Creates an edge insets object with the top edge inset `value`.
  static func top(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: value, left: 0, bottom: 0, right: 0)
  }

  /// Creates an edge insets object with the bottom edge inset `value`.
  static func bottom(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: 0, bottom: value, right: 0)
  }

  /// Creates an edge insets object with the left edge inset `value`.
  static func left(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: value, bottom: 0, right: 0)
  }

  /// Creates an edge insets object with the right edge inset `value`.
  static func right(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: 0, bottom: 0, right: value)
  }

  /// Creates an edge insets object with the same edge inset `value`.
  static func all(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: value, left: value, bottom: value, right: value)
  }

  /// Creates an edge insets object with the `horizontal` and `vertical` edge inset values.
  static func symmetric(horizontal: CGFloat, vertical: CGFloat) -> UIEdgeInsets {
    return .init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
  }

  /// Creates an edge insets object with the vertical edge inset `value`.
  static func vertical(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: value, left: 0, bottom: value, right: 0)
  }

  /// Creates an edge insets object with the horizontal edge inset `value`.
  static func horizontal(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: value, bottom: 0, right: value)
  }

  /// Creates an edge insets object with the top-left edge inset `value`.
  static func topLeft(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: value, left: value, bottom: 0, right: 0)
  }

  /// Creates an edge insets object with the top-right edge inset `value`.
  static func topRight(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: value, left: 0, bottom: 0, right: value)
  }

  /// Creates an edge insets object with the bottom-left edge inset `value`.
  static func bottomLeft(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: value, bottom: value, right: 0)
  }

  /// Creates an edge insets object with the bottom-right edge inset `value`.
  static func bottomRight(_ value: CGFloat) -> UIEdgeInsets {
    return .init(top: 0, left: 0, bottom: value, right: value)
  }
}
