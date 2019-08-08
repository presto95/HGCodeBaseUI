//
//  UIControl+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIControl {
  
  // MARK: - Configuring the Control's Attributes
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> Self {
    self.isEnabled = flag
    return self
  }
  
  @discardableResult
  func isSelected(_ flag: Bool) -> Self {
    self.isSelected = flag
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Self {
    self.isHighlighted = flag
    return self
  }
  
  @discardableResult
  func contentVerticalAlignment(_ alignment: UIControl.ContentVerticalAlignment) -> Self {
    self.contentVerticalAlignment = contentVerticalAlignment
    return self
  }
  
  @discardableResult
  func contentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Self {
    self.contentHorizontalAlignment = contentHorizontalAlignment
    return self
  }
  
  // MARK: - Accessing the Control's Targets and Actions
  
  @discardableResult
  func target(_ target: Any?, action: Selector, for event: UIControl.Event) -> Self {
    self.addTarget(target, action: action, for: event)
    return self
  }
}
