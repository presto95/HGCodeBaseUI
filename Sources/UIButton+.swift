//
//  UIButton+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension UIButton {
  /// Associates a `target` object and `action` method with the control
  /// in case of `touchUpInside` control event.
  func tapped(onTarget target: Any?, action: Selector) {
    addTarget(target, action: action, for: .touchUpInside)
  }
}
