//
//  UITextViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal final class UITextViewBuilder {
 
  private let textView: UITextView
  
  init() {
    textView = .init()
  }
  
  // MARK: - Responding to Text View Changes
  
  @discardableResult
  func textViewDelegate<T>(_ delegate: T?) -> UITextViewBuilder where T: UITextViewDelegate {
    textView.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> UITextViewBuilder {
    switch text {
    case let .plain(text):
      textView.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      textView.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont?) -> UITextViewBuilder {
    textView.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor?) -> UITextViewBuilder {
    textView.textColor = color
    return self
  }
  
  @discardableResult
  func isEditable(_ flag: Bool) -> UITextViewBuilder {
    textView.isEditable = flag
    return self
  }
  
  @discardableResult
  func allowsEditingTextAttributes(_ flag: Bool) -> UITextViewBuilder {
    textView.allowsEditingTextAttributes = flag
    return self
  }
  
  @discardableResult
  func dataDetectorTypes(_ types: UIDataDetectorTypes) -> UITextViewBuilder {
    textView.dataDetectorTypes = types
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> UITextViewBuilder {
    textView.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]) -> UITextViewBuilder {
    textView.typingAttributes = attributes
    return self
  }
  
  @discardableResult
  func linkTextAttributes(_ attributes: [NSAttributedString.Key: Any]!) -> UITextViewBuilder {
    textView.linkTextAttributes = attributes
    return self
  }
  
  @discardableResult
  func textContainerInset(_ inset: EdgeInsets) -> UITextViewBuilder {
    switch inset {
    case let .each(top, left, bottom, right):
      textView.textContainerInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      textView.textContainerInset = .init(top: vertical,
                                      left: horizontal,
                                      bottom: vertical,
                                      right: horizontal)
    case let .all(value):
      textView.textContainerInset = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      textView.textContainerInset = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      textView.textContainerInset = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      textView.textContainerInset = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      textView.textContainerInset = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      textView.textContainerInset = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      textView.textContainerInset = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      textView.textContainerInset = .zero
    }
    return self
  }
  
  // MARK: - Working with the Selection
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> UITextViewBuilder {
    textView.clearsOnInsertion = flag
    return self
  }
  
  @discardableResult
  func isSelectable(_ flag: Bool) -> UITextViewBuilder {
    textView.isSelectable = flag
    return self
  }
  
  // MARK: - Replacing the System Input Views
  
  @discardableResult
  func inputView(_ view: UIView?) -> UITextViewBuilder {
    textView.inputView = view
    return self
  }
  
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> UITextViewBuilder {
    textView.inputAccessoryView = view
    return self
  }
  
  // MARK: - Builder
  
  func build() -> UITextView {
    return textView
  }
}
