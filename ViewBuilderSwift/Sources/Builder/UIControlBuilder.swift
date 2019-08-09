//
//  UIControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIControl {
  
  @discardableResult
  func builder() -> UIControlBuilder {
    return .init(control: self)
  }
}

public final class UIControlBuilder {
  
  private let control: UIControl
  
  init() {
    control = .init()
  }
  
  init(control: UIControl) {
    self.control = control
  }
  
  // MARK: - Configuring the Control's Attributes
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> UIControlBuilder {
    control.isEnabled = flag
    return self
  }
  
  @discardableResult
  func isSelected(_ flag: Bool) -> UIControlBuilder {
    control.isSelected = flag
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> UIControlBuilder {
    control.isHighlighted = flag
    return self
  }
  
  @discardableResult
  func contentVerticalAlignment(
    _ alignment: UIControl.ContentVerticalAlignment
  ) -> UIControlBuilder {
    control.contentVerticalAlignment = alignment
    return self
  }
  
  @discardableResult
  func contentHorizontalAlignment(
    _ alignment: UIControl.ContentHorizontalAlignment
  ) -> UIControlBuilder {
    control.contentHorizontalAlignment = alignment
    return self
  }
  
  // MARK: - Accessing the Control's Targets and Actions
  
  @discardableResult
  func target(_ target: Any?, action: Selector, for event: UIControl.Event) -> UIControlBuilder {
    control.addTarget(target, action: action, for: event)
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIControl {
    return control
  }
}
