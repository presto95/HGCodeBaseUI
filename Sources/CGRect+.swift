//
//  CGRect+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension CGRect {
  /// Creates a rectangle with the same coordinate and dimension value
  /// specified as the integer value.
  static func all(_ value: Int) -> CGRect {
    return .init(x: value, y: value, width: value, height: value)
  }

  /// Creates a rectangle with the same coordinate and dimension value
  /// specified as the floating-point value.
  static func all(_ value: Double) -> CGRect {
    return .init(x: value, y: value, width: value, height: value)
  }

  /// Creates a rectangle with the same coordinate and dimension value
  /// specified as the `CGFloat` value.
  static func all(_ value: CGFloat) -> CGRect {
    return .init(x: value, y: value, width: value, height: value)
  }
}
