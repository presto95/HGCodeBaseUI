//
//  UITextView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITextView {
  
  // MARK: - Responding to Text View Changes
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITextViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> Builder {
    switch text {
    case let .plain(text):
      base.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      base.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont?) -> Builder {
    base.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor?) -> Builder {
    base.textColor = color
    return self
  }
  
  @discardableResult
  func isEditable(_ flag: Bool) -> Builder {
    base.isEditable = flag
    return self
  }
  
  @discardableResult
  func allowsEditingTextAttributes(_ flag: Bool) -> Builder {
    base.allowsEditingTextAttributes = flag
    return self
  }
  
  @discardableResult
  func dataDetectorTypes(_ types: UIDataDetectorTypes) -> Builder {
    base.dataDetectorTypes = types
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Builder {
    base.typingAttributes = attributes
    return self
  }
  
  @discardableResult
  func linkTextAttributes(_ attributes: [NSAttributedString.Key: Any]!) -> Builder {
    base.linkTextAttributes = attributes
    return self
  }
  
  @discardableResult
  func textContainerInset(_ inset: EdgeInsets) -> Builder {
    switch inset {
    case let .each(top, left, bottom, right):
      base.textContainerInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.textContainerInset = .init(top: vertical,
                                          left: horizontal,
                                          bottom: vertical,
                                          right: horizontal)
    case let .all(value):
      base.textContainerInset = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      base.textContainerInset = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.textContainerInset = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.textContainerInset = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.textContainerInset = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.textContainerInset = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.textContainerInset = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.textContainerInset = .zero
    }
    return self
  }
  
  // MARK: - Working with the Selection
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Builder {
    base.clearsOnInsertion = flag
    return self
  }
  
  @discardableResult
  func isSelectable(_ flag: Bool) -> Builder {
    base.isSelectable = flag
    return self
  }
  
  // MARK: - Replacing the System Input Views
  
  @discardableResult
  func inputView(_ view: UIView?) -> Builder {
    base.inputView = view
    return self
  }
  
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Builder {
    base.inputAccessoryView = view
    return self
  }
}

#endif
