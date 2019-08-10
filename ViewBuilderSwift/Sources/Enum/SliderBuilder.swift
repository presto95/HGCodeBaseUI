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
    
    case each(minimumTrack: UIColor?, maximumTrack: UIColor?, thumb: UIColor?)
    
    case trackRange(minimum: UIColor?, maximum: UIColor?)
    
    case minimumTrack(UIColor?)
    
    case maximumTrack(UIColor?)
    
    case thumb(UIColor?)
  }
  
  public enum Image {
    
    case each(minimumValue: UIImage?,
      maximumValue: UIImage?,
      minimumTrack: (UIImage?, state: UIControl.State),
      maximumTrack: (UIImage?, state: UIControl.State),
      thumb: (UIImage?, state: UIControl.State))
    
    case minimumValue(UIImage?)
    
    case maximumValue(UIImage?)
    
    case minimumTrack((UIImage?, state: UIControl.State))
    
    case maximumTrack((UIImage?, state: UIControl.State))
    
    case thumb((UIImage?, state: UIControl.State))
  }
}

#endif
