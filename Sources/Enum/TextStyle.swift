//
//  TextStyle.swift
//  ViewBuilderSwift
//
//  Created by Presto on 13/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TextStyle {
  
  case each(color: UIColor?, font: UIFont?, alignment: NSTextAlignment)
  
  case color(UIColor?)
  
  case font(UIFont?)
  
  case alignment(NSTextAlignment)
}

#endif
