//
//  SliderBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SliderBuilder {
  
  public enum Color {
    
    public enum Track {
      
      case each(min: UIColor?, max: UIColor?)
      
      case min(UIColor?)
      
      case max(UIColor?)
    }
    
    case each(track: Track, thumb: UIColor?)
    
    case track(Track)
    
    case thumb(UIColor?)
  }
  
  public enum Image {
    
    public enum Value {
      
      case each(min: UIImage?, max: UIImage?)
      
      case min(UIImage?)
      
      case max(UIImage?)
    }
    
    public enum Track {
      
      case each(min: (UIImage?, state: UIControl.State), max: (UIImage?, state: UIControl.State))
      
      case min(UIImage?, state: UIControl.State)
      
      case max(UIImage?, state: UIControl.State)
    }
    
    case each(value: Value, track: Track, thumb: (UIImage?, state: UIControl.State))
    
    case value(Value)
    
    case track(Track)
    
    case thumb(UIImage?, state: UIControl.State)
  }
}

#endif
