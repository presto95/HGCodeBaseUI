//
//  UIBlurEffect+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension UIVisualEffect {
  /// Creates a blur effect object with a `style`.
  static func blur(withStyle style: UIBlurEffect.Style) -> UIBlurEffect {
    return .init(style: style)
  }

  /// Creates a vibrancy effect object with a `blurStyle`.
  static func vibrancy(withBlurStyle blurStyle: UIBlurEffect.Style) -> UIVibrancyEffect {
    return .init(blurEffect: .init(style: blurStyle))
  }
}
