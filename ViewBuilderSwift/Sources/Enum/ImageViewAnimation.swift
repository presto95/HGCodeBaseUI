//
//  Animation.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum ImageViewAnimation {
  
  case each(duration: TimeInterval, repeatCount: Int)
  
  case duration(TimeInterval)
  
  case repeatCount(Int)
}
