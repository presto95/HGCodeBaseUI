//
//  UITextField+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITextField {
  
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
  
  /// Helper associated with **placeholder** setting feature.
  ///
  /// - `plain` case for `placeholder` property setter.
  /// - `attributed` case for `attributedPlaceholder` property setter.
  @discardableResult
  func placeholder(_ placeholder: Text) -> Builder {
    switch placeholder {
    case let .plain(placeholder):
      base.placeholder = placeholder
    case let .attributed(text, attributes):
      base.attributedPlaceholder = .init(string: text, attributes: attributes)
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
  /// - `defaultText` case for `defaultTextAttributes` property setter.
  /// - `typing` case for `typingAttributes` property setter.
  @discardableResult
  func attributes(_ attributes: TextFieldBuilder.Attributes) -> Builder {
    switch attributes {
    case let .each(defaultText, typing):
      base.defaultTextAttributes = defaultText
      base.typingAttributes = typing
    case let .defaultText(defaultText):
      base.defaultTextAttributes = defaultText
    case let .typing(typing):
      base.typingAttributes = typing
    }
    return self
  }
  
  /// Helper associated with **background** setting feature.
  ///
  /// - `plain` case for `background` property setter.
  /// - `disabled` case for `disabledBackground` property setter.
  @discardableResult
  func background(_ background: TextFieldBuilder.Background) -> Builder {
    switch background {
    case let .each(plain, disabled):
      base.background = plain
      base.disabledBackground = disabled
    case let .plain(plain):
      base.background = plain
    case let .disabled(disabled):
      base.disabledBackground = disabled
    }
    return self
  }
  
  /// Helper associated with **overlay views** setting feature.
  ///
  /// - `clearButtonMode` case for `clearButtonMode` property setter.
  /// - `view` case for `leftView` and `rightView` property setter.
  /// - `viewMode` case for `leftViewMode` and `rightViewMode` property setter.
  @discardableResult
  func overlay(_ overlay: TextFieldBuilder.Overlay) -> Builder {
    switch overlay {
    case let .each(clearButtonMode, view, viewMode):
      base.clearButtonMode = clearButtonMode
      switch view {
      case let .left(left):
        base.leftView = left
      case let .right(right):
        base.rightView = right
      }
      switch viewMode {
      case let .left(left):
        base.leftViewMode = left
      case let .right(right):
        base.rightViewMode = right
      }
    case let .clearButtonMode(clearButtonMode):
      base.clearButtonMode = clearButtonMode
    case let .view(view):
      switch view {
      case let .left(left):
        base.leftView = left
      case let .right(right):
        base.rightView = right
      }
    case let .viewMode(viewMode):
      switch viewMode {
      case let .left(left):
        base.leftViewMode = left
      case let .right(right):
        base.rightViewMode = right
      }
    }
    return self
  }
  
  // MARK: - Validating and Handling Edits
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITextFieldDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Accessing the Text Attributes
  
  /// Wrapper of `text` property setter.
  @discardableResult
  func text(_ text: String?) -> Builder {
    base.text = text
    return self
  }
  
  /// Wrapper of `attributedText` property setter.
  @discardableResult
  func attributedText(_ text: NSAttributedString?) -> Builder {
    base.attributedText = text
    return self
  }

  /// Wrapper of `placeholder` property setter.
  @discardableResult
  func placeholder(_ placeholder: String?) -> Builder {
    base.placeholder = placeholder
    return self
  }
  
  /// Wrapper of `attributedPlaceholder` property setter.
  @discardableResult
  func attributedPlaceholder(_ placeholder: NSAttributedString?) -> Builder {
    base.attributedPlaceholder = placeholder
    return self
  }
  
  /// Wrapper of `defaultTextAttributes` property setter.
  @discardableResult
  func defaultTextAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Builder {
    base.defaultTextAttributes = attributes
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
  
  /// Wrapper of `textAlignment` property setter.
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  /// Wrapper of `typingAttributes` property setter.
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> Builder {
    base.typingAttributes = attributes
    return self
  }
  
  // MARK: - Sizing the Text Field's Text
  
  /// Wrapper of `adjustsFontSizeToFitWidth` property setter.
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Builder {
    base.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  /// Wrapper of `minimumFontSize` property setter.
  @discardableResult
  func minimumFontSize(_ size: CGFloat) -> Builder {
    base.minimumFontSize = size
    return self
  }
  
  // MARK: - Managing the Editing Behavior
  
  /// Wrapper of `clearsOnBeginEditing` property setter.
  @discardableResult
  func clearsOnBeginEditing(_ flag: Bool) -> Builder {
    base.clearsOnBeginEditing = flag
    return self
  }
  
  /// Wrapper of `clearsOnInsertion` property setter.
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Builder {
    base.clearsOnInsertion = flag
    return self
  }
  
  /// Wrapper of `allowsEditingTextAttributes` property setter.
  @discardableResult
  func allowsEditingTextAttributes(_ flag: Bool) -> Builder {
    base.allowsEditingTextAttributes = flag
    return self
  }
  
  // MARK: - Setting the View's Background Appearance
  
  /// Wrapper of `borderStyle` property setter.
  @discardableResult
  func borderStyle(_ style: UITextField.BorderStyle) -> Builder {
    base.borderStyle = style
    return self
  }
  
  /// Wrapper of `background` property setter.
  @discardableResult
  func background(_ image: UIImage?) -> Builder {
    base.background = image
    return self
  }
  
  /// Wrapper of `disabledBackground` property setter.
  @discardableResult
  func disabledBackground(_ image: UIImage?) -> Builder {
    base.disabledBackground = image
    return self
  }
  
  // MARK: - Managing Overlay Views
  
  /// Wrapper of `clearButtonMode` property setter.
  @discardableResult
  func clearButtonMode(_ mode: UITextField.ViewMode) -> Builder {
    base.clearButtonMode = mode
    return self
  }
  
  /// Wrapper of `leftView` property setter.
  @discardableResult
  func leftView(_ view: UIView?) -> Builder {
    base.leftView = view
    return self
  }
  
  /// Wrapper of `leftViewMode` property setter.
  @discardableResult
  func leftViewMode(_ mode: UITextField.ViewMode) -> Builder {
    base.leftViewMode = mode
    return self
  }
  
  /// Wrapper of `rightView` property setter.
  @discardableResult
  func rightView(_ view: UIView?) -> Builder {
    base.rightView = view
    return self
  }
  
  /// Wrapper of `rightViewMode` property setter.
  @discardableResult
  func rightViewMode(_ mode: UITextField.ViewMode) -> Builder {
    base.rightViewMode = mode
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
