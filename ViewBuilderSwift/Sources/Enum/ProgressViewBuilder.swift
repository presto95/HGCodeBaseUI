//
//  ProgressViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ProgressViewBuilder {
  
  public enum Progress<T> {
    
    case each(progress: T, track: T)
    
    case progress(T)
    
    case track(T)
  }
}

#endif
