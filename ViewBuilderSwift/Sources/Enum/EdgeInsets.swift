//
//  EdgeInsets.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum EdgeInsets {
  
  case each(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
  
  case symmetric(horizontal: CGFloat, vertical: CGFloat)
  
  case all(CGFloat)
  
  case zero
}

