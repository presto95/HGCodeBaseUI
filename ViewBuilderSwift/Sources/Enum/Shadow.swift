//
//  Shadow.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum Shadow<Dimension> where Dimension: DimensionProtocol {
  
  case each(color: UIColor?, offset: Point<Dimension>)
  
  case color(UIColor?)
  
  case offset(Point<Dimension>)
}

#endif
