//
//  ImageViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ImageViewBuilder {
  
  public enum Animation {
    
    public enum Image {
      
      case each(plain: [UIImage]?, highlighted: [UIImage]?)
      
      case plain([UIImage]?)
      
      case highlighted([UIImage]?)
    }
    
    case each(images: Image, duration: TimeInterval, repeatCount: Int)
    
    case images(Image)
    
    case duration(TimeInterval)
    
    case repeatCount(Int)
  }
  
  public enum Image {
    
    public enum Animation {
      
      case each(plain: [UIImage]?, highlighted: [UIImage]?)
      
      case plain([UIImage]?)
      
      case highlighted([UIImage]?)
    }
    
    case each(plain: UIImage?, highlighted: UIImage?, animation: Animation)
    
    case plain(UIImage?)
    
    case highlighted(UIImage?)
    
    case animation(Animation)
  }
}

#endif
