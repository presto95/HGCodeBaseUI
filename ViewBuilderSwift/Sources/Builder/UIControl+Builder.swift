//
//  UIControl+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIControl {
  
  // MARK: - Configuring the Control's Attributes
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> Builder {
    base.isEnabled = flag
    return self
  }
  
  @discardableResult
  func isSelected(_ flag: Bool) -> Builder {
    base.isSelected = flag
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  @discardableResult
  func contentVerticalAlignment(_ alignment: UIControl.ContentVerticalAlignment) -> Builder {
    base.contentVerticalAlignment = alignment
    return self
  }
  
  @discardableResult
  func contentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Builder {
    base.contentHorizontalAlignment = alignment
    return self
  }
  
  // MARK: - Accessing the Control's Targets and Actions
  
  @discardableResult
  func target(_ target: Any?, action: Selector, for event: UIControl.Event) -> Builder {
    base.addTarget(target, action: action, for: event)
    return self
  }
}

#endif
