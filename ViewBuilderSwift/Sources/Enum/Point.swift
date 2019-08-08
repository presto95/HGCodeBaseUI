//
//  Point.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum Point<Dimension> where Dimension: DimensionProtocol {
  
  case each(x: Dimension, y: Dimension)
  
  case all(Dimension)
  
  case zero
}
