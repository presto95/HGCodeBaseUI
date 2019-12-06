//
//  CGPoint+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension CGPoint {
  /// Creates a point with the same coordinate value specified as the integer value.
  static func all(_ value: Int) -> CGPoint {
    return .init(x: value, y: value)
  }

  /// Creates a point with the same coordinate value specified as the floating-point value.
  static func all(_ value: Double) -> CGPoint {
    return .init(x: value, y: value)
  }

  /// Creates a point with the same coordinate value specified as the `CGFloat` value.
  static func all(_ value: CGFloat) -> CGPoint {
    return .init(x: value, y: value)
  }
}
