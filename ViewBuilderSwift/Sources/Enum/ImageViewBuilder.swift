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
    
    case each(duration: TimeInterval, repeatCount: Int)
    
    case duration(TimeInterval)
    
    case repeatCount(Int)
  }
}

#endif
