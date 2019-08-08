//
//  ViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public enum ViewBuilder {
  
  static func button(type: UIButton.ButtonType = .system) -> UIButtonBuilder {
    return .init(type: type)
  }
  
  static func control() -> UIControlBuilder {
    return .init()
  }
  
  static func imageView() -> UIImageViewBuilder {
    return .init()
  }
  
  static func label() -> UILabelBuilder {
    return .init()
  }
  
  static func scrollView() -> UIScrollViewBuilder {
    return .init()
  }
  
  static func tableView(style: UITableView.Style = .plain) -> UITableViewBuilder {
    return .init(style: style)
  }
  
  static func textField() -> UITextFieldBuilder {
    return .init()
  }
  
  static func textView() -> UITextViewBuilder {
    return .init()
  }
  
  static func view() -> UIViewBuilder {
    return .init()
  }
}
