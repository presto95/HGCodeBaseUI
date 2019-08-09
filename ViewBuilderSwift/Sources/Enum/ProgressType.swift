//
//  ProgressAppearance.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum ProgressType<T> {
  
  case each(progress: T, track: T)
  
  case progress(T)
  
  case track(T)
}
