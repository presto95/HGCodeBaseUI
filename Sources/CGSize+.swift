//
//  CGSize+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension CGSize {
  /// Creates a size with the same dimension value specified as the integer value.
  static func all(_ value: Int) -> CGSize {
    return .init(width: value, height: value)
  }

  /// Creates a size with the same dimension value specified as the floating-point value.
  static func all(_ value: Double) -> CGSize {
    return .init(width: value, height: value)
  }

  /// Creates a size with the same dimension value specified as the `CGFloat` value.
  static func all(_ value: CGFloat) -> CGSize {
    return .init(width: value, height: value)
  }
}
