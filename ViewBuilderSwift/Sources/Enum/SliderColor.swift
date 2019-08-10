//
//  SliderColor.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SliderColor {
  
  case each(minimumTrack: UIColor?, maximumTrack: UIColor?, thumb: UIColor?)
  
  case trackRange(minimum: UIColor?, maximum: UIColor?)
  
  case minimumTrack(UIColor?)
  
  case maximumTrack(UIColor?)
  
  case thumb(UIColor?)
}

#endif
