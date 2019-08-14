//
//  TabBarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TabBarBuilder {
  
  public enum Image {
    
    case each(background: UIImage?, shadow: UIImage?, selectionIndicator: UIImage?)
    
    case background(UIImage?)
    
    case shadow(UIImage?)
    
    case selectionIndicator(UIImage?)
  }
  
  public enum Color {
    
    case each(plain: UIColor!, bar: UIColor?)
    
    case plain(UIColor!)
    
    case bar(UIColor?)
  }
  
  public enum ItemLayout {
    
    case each(positioning: UITabBar.ItemPositioning, spacing: CGFloat, width: CGFloat)
    
    case positioning(UITabBar.ItemPositioning)
    
    case spacing(CGFloat)
    
    case width(CGFloat)
  }
}

#endif
