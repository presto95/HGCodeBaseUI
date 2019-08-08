//
//  UITextFieldBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

internal final class UITextFieldBuilder {
  
  private let textField: UITextField
  
  init() {
    textField = .init()
  }
  
  // MARK: - Validating and Handling Edits
  
  @discardableResult
  func textFieldDelegate<T>(_ delegate: T?) -> UITextFieldBuilder where T: UITextFieldDelegate {
    textField.delegate = delegate
    return self
  }
  
  // MARK: - Accessing the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> UITextFieldBuilder {
    switch text {
    case let .plain(text):
      textField.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      textField.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func placeholder(_ placeholder: Text) -> UITextFieldBuilder {
    switch placeholder {
    case let .plain(placeholder):
      textField.placeholder = placeholder
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      textField.attributedPlaceholder = attributedString
    }
    return self
  }
  
  @discardableResult
  func defaultTextAttributes(_ attributes: [NSAttributedString.Key: Any]) -> UITextFieldBuilder {
    textField.defaultTextAttributes = attributes
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont?) -> UITextFieldBuilder {
    textField.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor?) -> UITextFieldBuilder {
    textField.textColor = color
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> UITextFieldBuilder {
    textField.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> UITextFieldBuilder {
    textField.typingAttributes = attributes
    return self
  }
  
  // MARK: - Sizing the Text Field's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> UITextFieldBuilder {
    textField.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func minimumFontSize(_ size: CGFloat) -> UITextFieldBuilder {
    textField.minimumFontSize = size
    return self
  }
  
  // MARK: - Managing the Editing Behavior
  
  @discardableResult
  func clearsOnBeginEditing(_ flag: Bool) -> UITextFieldBuilder {
    textField.clearsOnBeginEditing = flag
    return self
  }
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> UITextFieldBuilder {
    textField.clearsOnInsertion = flag
    return self
  }
  
  // MARK: - Setting the View's Background Appearance
  
  @discardableResult
  func borderStyle(_ style: UITextField.BorderStyle) -> UITextFieldBuilder {
    textField.borderStyle = style
    return self
  }
  
  @discardableResult
  func background(_ image: UIImage?) -> UITextFieldBuilder {
    textField.background = image
    return self
  }
  
  @discardableResult
  func disabledBackground(_ image: UIImage?) -> UITextFieldBuilder {
    textField.disabledBackground = image
    return self
  }
  
  // MARK: - Managing Overlay Views
  
  @discardableResult
  func clearButtonMode(_ mode: UITextField.ViewMode) -> UITextFieldBuilder {
    textField.clearButtonMode = mode
    return self
  }
  
  @discardableResult
  func leftView(_ view: UIView?) -> UITextFieldBuilder {
    textField.leftView = view
    return self
  }
  
  @discardableResult
  func leftViewMode(_ mode: UITextField.ViewMode) -> UITextFieldBuilder {
    textField.leftViewMode = mode
    return self
  }
  
  @discardableResult
  func rightView(_ view: UIView?) -> UITextFieldBuilder {
    textField.rightView = view
    return self
  }
  
  @discardableResult
  func rightViewMode(_ mode: UITextField.ViewMode) -> UITextFieldBuilder {
    textField.rightViewMode = mode
    return self
  }
  
  // MARK: - Replacing the System Input Views
  
  @discardableResult
  func inputView(_ view: UIView?) -> UITextFieldBuilder {
    textField.inputView = view
    return self
  }
  
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> UITextFieldBuilder {
    textField.inputAccessoryView = view
    return self
  }
  
  // MARK: - Build
  
  func build() -> UITextField {
    return textField
  }
}
