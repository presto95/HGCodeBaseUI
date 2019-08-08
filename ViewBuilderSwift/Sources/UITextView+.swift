//
//  UITextView+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UITextView {
  
  // MARK: - Responding to Text View Changes
  
  @discardableResult
  func textViewDelegate<T>(_ delegate: T?) -> Self where T: UITextViewDelegate {
    self.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> Self {
    switch text {
    case let .plain(text):
      self.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text ?? "", attributes: attributes)
      self.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont?) -> Self {
    self.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor?) -> Self {
    self.textColor = color
    return self
  }
  
  @discardableResult
  func isEditable(_ flag: Bool) -> Self {
    self.isEditable = flag
    return self
  }
  
  @discardableResult
  func allowsEditingTextAttributes(_ flag: Bool) -> Self {
    self.allowsEditingTextAttributes = flag
    return self
  }
  
  @discardableResult
  func dataDetectorTypes(_ types: UIDataDetectorTypes) -> Self {
    self.dataDetectorTypes = types
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    self.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Self {
    self.typingAttributes = attributes
    return self
  }
  
  @discardableResult
  func linkTextAttributes(_ attributes: [NSAttributedString.Key: Any]!) -> Self {
    self.linkTextAttributes = attributes
    return self
  }
  
  @discardableResult
  func textContainerInset(_ inset: EdgeInsets) -> Self {
    switch inset {
    case let .each(top, left, bottom, right):
      self.textContainerInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      self.textContainerInset = .init(top: vertical,
                                      left: horizontal,
                                      bottom: vertical,
                                      right: horizontal)
    case let .all(value):
      self.textContainerInset = .init(top: value, left: value, bottom: value, right: value)
    case .zero:
      self.textContainerInset = .zero
    }
    return self
  }
  
  // MARK: - Working with the Selection
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Self {
    self.clearsOnInsertion = flag
    return self
  }
  
  @discardableResult
  func isSelectable(_ flag: Bool) -> Self {
    self.isSelectable = flag
    return self
  }
  
  // MARK: - Replacing the System Input Views
  
  @discardableResult
  func inputView(_ view: UIView?) -> Self {
    self.inputView = view
    return self
  }
  
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Self {
    self.inputAccessoryView = view
    return self
  }
}
