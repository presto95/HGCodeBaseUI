//
//  Size.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum Size<Dimension> where Dimension: DimensionProtocol {
  
  case each(width: Dimension, height: Dimension)
  
  case all(Dimension)
  
  case zero
}

#endif
