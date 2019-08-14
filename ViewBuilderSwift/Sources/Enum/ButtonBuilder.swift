//
//  ButtonBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 13/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ButtonBuilder {
  
  public enum EdgeInset {
    
    case each(content: EdgeInsets, title: EdgeInsets, image: EdgeInsets)
    
    case content(EdgeInsets)
    
    case title(EdgeInsets)
    
    case image(EdgeInsets)
  }
  
  public enum Image {
    
    case each(plain: UIImage?, background: UIImage?)
    
    case plain(UIImage?)
    
    case background(UIImage?)
  }
  
  public enum TitleColor {
    
    case each(plain: UIColor?, shadow: UIColor?)
    
    case plain(UIColor?)
    
    case shadow(UIColor?)
  }
}

#endif
