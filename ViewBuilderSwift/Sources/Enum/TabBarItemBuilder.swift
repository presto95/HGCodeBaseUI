//
//  TabBarItemBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TabBarItemBuilder {
  
  public enum Badge {
    
    case each(value: String?,
              color: UIColor?,
              textAttributes: ([NSAttributedString.Key: Any]?, state: UIControl.State))
    
    case value(String?)
    
    case color(UIColor?)
    
    case textAttributes([NSAttributedString.Key: Any]?, state: UIControl.State)
  }
}

#endif
