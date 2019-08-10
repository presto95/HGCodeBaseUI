//
//  SliderImage.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

enum SliderImage {
  
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
