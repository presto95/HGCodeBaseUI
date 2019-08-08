//
//  UITextField+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UITextField {
  
  // MARK: - Validating and Handling Edits
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Self where T: UITextFieldDelegate {
    self.delegate = delegate
    return self
  }
  
  // MARK: - Accessing the Text Attributes
  
  @discardableResult
  func text(_ text: String?,
            withAttributes attributes: [NSAttributedString.Key: Any]? = nil) -> Self {
    if let attributes = attributes {
      let attributedString = NSAttributedString(string: text ?? "", attributes: attributes)
      self.attributedText = attributedString
    } else {
      self.text = text
    }
    return self
  }
  
  @discardableResult
  func placeholder(_ placeholder: String?,
                   withAttributes attributes: [NSAttributedString.Key: Any]? = nil) -> Self {
    if let attributes = attributes {
      let attributedString = NSAttributedString(string: placeholder ?? "", attributes: attributes)
      self.attributedPlaceholder = attributedString
    } else {
      self.placeholder = placeholder
    }
    return self
  }
  
  @discardableResult
  func defaultTextAttributes(_ attributes: [NSAttributedString.Key: Any]) -> Self {
    self.defaultTextAttributes = attributes
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
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    self.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key: Any]?) -> Self {
    self.typingAttributes = attributes
    return self
  }
  
  // MARK: - Sizing the Text Field's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Self {
    self.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func minimumFontSize(_ size: CGFloat) -> Self {
    self.minimumFontSize = size
    return self
  }
  
  // MARK: - Managing the Editing Behavior
  
  @discardableResult
  func clearsOnBeginEditing(_ flag: Bool) -> Self {
    self.clearsOnBeginEditing = flag
    return self
  }
  
  @discardableResult
  func clearsOnInsertion(_ flag: Bool) -> Self {
    self.clearsOnInsertion = flag
    return self
  }
  
  // MARK: - Setting the View's Background Appearance
  
  @discardableResult
  func borderStyle(_ style: UITextField.BorderStyle) -> Self {
    self.borderStyle = style
    return self
  }
  
  @discardableResult
  func background(_ image: UIImage?) -> Self {
    self.background = background
    return self
  }
  
  @discardableResult
  func disabledBackground(_ image: UIImage?) -> Self {
    self.disabledBackground = image
    return self
  }
  
  // MARK: - Managing Overlay Views
  
  @discardableResult
  func clearButtonMode(_ mode: UITextField.ViewMode) -> Self {
    self.clearButtonMode = mode
    return self
  }
  
  @discardableResult
  func leftView(_ view: UIView?) -> Self {
    self.leftView = view
    return self
  }
  
  @discardableResult
  func leftViewMode(_ mode: UITextField.ViewMode) -> Self {
    self.leftViewMode = mode
    return self
  }
  
  @discardableResult
  func rightView(_ view: UIView?) -> Self {
    self.rightView = view
    return self
  }
  
  @discardableResult
  func rightViewMode(_ mode: UITextField.ViewMode) -> Self {
    self.rightViewMode = mode
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
