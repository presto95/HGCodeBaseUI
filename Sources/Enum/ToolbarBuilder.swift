//
//  ToolbarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ToolbarBuilder {
  
  public enum Color {
    
    case each(plain: UIColor?, bar: UIColor?)
    
    case plain(UIColor?)
    
    case bar(UIColor?)
  }
  
  public enum Image {
    
    case each(background: (UIImage?, toolbarPosition: UIBarPosition, barMetrics: UIBarMetrics),
              shadow: (UIImage?, toolbarPosition: UIBarPosition))
    
    case background(UIImage?, toolbarPosition: UIBarPosition, barMetrics: UIBarMetrics)
    
    case shadow(UIImage?, toolbarPosition: UIBarPosition)
  }
}

#endif
