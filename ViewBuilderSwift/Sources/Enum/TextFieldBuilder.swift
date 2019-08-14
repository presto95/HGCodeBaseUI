//
//  TextFieldBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 13/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TextFieldBuilder {
  
  public enum Background {
    
    case each(plain: UIImage?, disabled: UIImage?)
    
    case plain(UIImage?)
    
    case disabled(UIImage?)
  }
  
  public enum Overlay {
    
    public enum Direction<T> {
      
      case left(T)
      
      case right(T)
    }
    
    case each(clearButtonMode: UITextField.ViewMode,
              view: Direction<UIView?>,
              viewMode: Direction<UITextField.ViewMode>)
  
    case clearButtonMode(UITextField.ViewMode)
    
    case view(Direction<UIView?>)
    
    case viewMode(Direction<UITextField.ViewMode>)
  }
  
  public enum Attributes {
    
    case each(defaultText: [NSAttributedString.Key: Any], typing: [NSAttributedString.Key: Any])
    
    case defaultText([NSAttributedString.Key: Any])
    
    case typing([NSAttributedString.Key: Any])

  }
}

#endif
