//
//  UITextView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITextView {
  
  // MARK: - Helper
  
  /// Helper for observing keyboard notifications.
  @discardableResult
  func keyboardObserver(_ keyboardNotification: KeyboardNotification,
                        observer: Any,
                        selector: Selector) -> Builder {
    NotificationCenter.default.addObserver(observer,
                                           selector: selector,
                                           name: keyboardNotification.notificationName,
                                           object: nil)
    return self
  }
  
  /// Helper associated with **text & text style** setting feature.
  ///
  /// - `plain` case for `text` property setter.
  /// - `attributed` case for `attributedText` property setter.
  @discardableResult
  func text(_ text: Text, style: TextStyle? = nil) -> Builder {
    switch text {
    case let .plain(text):
      base.text = text
    case let .attributed(text, attributes):
      base.attributedText = .init(string: text, attributes: attributes)
    }
    if let style = style {
      textStyle(style)
    }
    return self
  }
  
  /// Helper associated with **text style** setting feature.
  ///
  /// - `color` case for `textColor` property setter.
  /// - `font` case for `font` property setter.
  /// - `alignment` case for `textAlignment` property setter.
  @discardableResult
  func textStyle(_ textStyle: TextStyle) -> Builder {
    switch textStyle {
    case let .each(color, font, alignment):
      base.textColor = color
      base.font = font
      base.textAlignment = alignment
    case let .color(color):
      base.textColor = color
    case let .font(font):
      base.font = font
    case let .alignment(alignment):
      base.textAlignment = alignment
    }
    return self
  }
  
  /// Helper associated with **attributes** setting feature.
  ///
  /// - `typing` case for `typingAttributes` property setter.
  /// - `linkText` case for `linkTextAttributes` property setter.
  @discardableResult
  func attributes(_ attributes: TextViewBuilder.Attributes) -> Builder {
    switch attributes {
    case let .each(typing, linkText):
      base.typingAttributes = typing
      base.linkTextAttributes = linkText
    case let .typing(typing):
      base.typingAttributes = typing
    case let .linkText(linkText):
      base.linkTextAttributes = linkText
    }
    return self
  }

  /// Helper of `textContainerInset` property setter.
  @discardableResult
  func textContainerInset(_ inset: EdgeInsets) -> Builder {
    base.textContainerInset = inset.uiEdgeInsets
    return self
  }
  
  // MARK: - Responding to Text View Changes
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITextViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Text Attributes
  
  /// Wrapper of `text` property setter.
  @discardableResult
  func text(_ text: String!) -> Builder {
    base.text = text
    return self
  }
  
  /// Wrapper of `attributedText` property setter.
  @discardableResult
  func attributedText(_ text: NSAttributedString!) -> Builder {
    base.attributedText = text
    return self
  }
  
  /// Wrapper of `font` property setter.
  @discardableResult
  func font(_ font: UIFont?) -> Builder {
    base.font = font
    return self
  }
  
  /// Wrapper of `textColor` property setter.
  @discardableResult
  func textColor(_ color: UIColor?) -> Builder {
    base.textColor = color
    return self
  }
  
  /// Wrapper of `isEditable` property setter.
  @discardableResult
  func isEditable(_ flag: Bool) -> Builder {
    base.isEditable = flag
    return self
  }
  
  /// Wrapper of `allowsEditingTextAttributes` property setter.
  @discardableResult
  func allowsEditingTextAttributes(_ flag: Bool) -> Builder {
    base.allowsEditingTextAttributes = flag
    return self
  }
  
  /// Wrapper of `dataDetectorTypes` property setter.
  @discardableResult
  func dataDetectorTypes(_ types: UIDataDetectorTypes) -> Builder {
    base.dataDetectorTypes = types
    return self
  }
  
  /// Wrapper of `textAlignment` property setter.
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  /// Wrapper of `typingAttribtues` property setter.
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Builder {
    base.typingAttributes = attributes
    return self
  }
  
  /// Wrapper of `linkTextAttributes` property setter.
  @discardableResult
  func linkTextAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Builder {
    base.linkTextAttributes = attributes
    return self
  }
  
  /// Wrapper of `textContainerInset` property setter.
  @discardableResult
  func textContainerInset(_ inset: UIEdgeInsets) -> Builder {
    base.textContainerInset = inset
    return self
  }
  
  // MARK: - Working with the Selection
  
  /// Wrapper of `selectedRange` property setter.
  @discardableResult
  func selectedRange(_ range: NSRange) -> Builder {
    base.selectedRange = range
    return self
  }
  
  /// Wrapper of `clearsOnInsertion` property setter.
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Builder {
    base.clearsOnInsertion = flag
    return self
  }
  
  /// Wrapper of `isSelectable` property setter.
  @discardableResult
  func isSelectable(_ flag: Bool) -> Builder {
    base.isSelectable = flag
    return self
  }
  
  // MARK: - Replacing the System Input Views
  
  /// Wrapper of `inputView` property setter.
  @discardableResult
  func inputView(_ view: UIView?) -> Builder {
    base.inputView = view
    return self
  }
  
  /// Wrapper of `inputAccessoryView` property setter.
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Builder {
    base.inputAccessoryView = view
    return self
  }
}

#endif
