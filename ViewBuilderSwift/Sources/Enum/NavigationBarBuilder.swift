//
//  NavigationBarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum NavigationBarBuilder {
  
  public enum TextAttributes {
    
    case each(title: [NSAttributedString.Key: Any]?, largeTitle: [NSAttributedString.Key: Any]?)
    
    case title([NSAttributedString.Key: Any]?)
    
    case largeTitle([NSAttributedString.Key: Any]?)
  }

  public enum Image {
    
    public enum BackIndicator {
      
      case each(plain: UIImage?, transitionMask: UIImage?)
      
      case plain(UIImage?)
      
      case transitionMask(UIImage?)
    }
    
    public enum Background {
      
      case unspecifiedPosition(UIImage?, barMetrics: UIBarMetrics)
      
      case specifiedPosition(UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics)
    }
    
    case each(backIndicator: BackIndicator, shadow: UIImage?, background: Background)
    
    case backIndicator(BackIndicator)
    
    case shadow(UIImage?)
    
    case background(Background)
  }
  
  public enum Color {
    
    case each(plain: UIColor!, bar: UIColor?)
    
    case plain(UIColor!)
    
    case bar(UIColor?)
  }
}

#endif
