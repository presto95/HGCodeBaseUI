//
//  UITextField+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITextField {
  
  // MARK: - Validating and Handling Edits
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITextFieldDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Accessing the Text Attributes
  
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
  func placeholder(_ placeholder: Text) -> Builder {
    switch placeholder {
    case let .plain(placeholder):
      base.placeholder = placeholder
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      base.attributedPlaceholder = attributedString
    }
    return self
  }
  
  @discardableResult
  func defaultTextAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Builder {
    base.defaultTextAttributes = attributes
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
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> Builder {
    base.typingAttributes = attributes
    return self
  }
  
  // MARK: - Sizing the Text Field's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Builder {
    base.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func minimumFontSize(_ size: CGFloat) -> Builder {
    base.minimumFontSize = size
    return self
  }
  
  // MARK: - Managing the Editing Behavior
  
  @discardableResult
  func clearsOnBeginEditing(_ flag: Bool) -> Builder {
    base.clearsOnBeginEditing = flag
    return self
  }
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Builder {
    base.clearsOnInsertion = flag
    return self
  }
  
  // MARK: - Setting the View's Background Appearance
  
  @discardableResult
  func borderStyle(_ style: UITextField.BorderStyle) -> Builder {
    base.borderStyle = style
    return self
  }
  
  @discardableResult
  func background(_ image: UIImage?) -> Builder {
    base.background = image
    return self
  }
  
  @discardableResult
  func disabledBackground(_ image: UIImage?) -> Builder {
    base.disabledBackground = image
    return self
  }
  
  // MARK: - Managing Overlay Views
  
  @discardableResult
  func clearButtonMode(_ mode: UITextField.ViewMode) -> Builder {
    base.clearButtonMode = mode
    return self
  }
  
  @discardableResult
  func leftView(_ view: UIView?) -> Builder {
    base.leftView = view
    return self
  }
  
  @discardableResult
  func leftViewMode(_ mode: UITextField.ViewMode) -> Builder {
    base.leftViewMode = mode
    return self
  }
  
  @discardableResult
  func rightView(_ view: UIView?) -> Builder {
    base.rightView = view
    return self
  }
  
  @discardableResult
  func rightViewMode(_ mode: UITextField.ViewMode) -> Builder {
    base.rightViewMode = mode
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
