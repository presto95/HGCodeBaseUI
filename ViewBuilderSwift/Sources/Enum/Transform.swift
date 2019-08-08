//
//  Transform.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum Transform {
  
  case rotation(angle: CGFloat)
  
  case scale(x: CGFloat, y: CGFloat)
  
  case translation(x: CGFloat, y: CGFloat)
  
  case identity
}
