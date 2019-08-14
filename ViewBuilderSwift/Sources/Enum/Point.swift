//
//  Point.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum Point<Dimension> where Dimension: DimensionProtocol {
  
  case each(x: Dimension, y: Dimension)
  
  case all(Dimension)
  
  case zero
}

extension Point where Dimension == Int {
  
  var cgPoint: CGPoint {
    switch self {
    case let .each(x, y):
      return .init(x: x, y: y)
    case let .all(value):
      return .init(x: value, y: value)
    case .zero:
      return .zero
    }
  }
}

extension Point where Dimension == Double {
  
  var cgPoint: CGPoint {
    switch self {
    case let .each(x, y):
      return .init(x: x, y: y)
    case let .all(value):
      return .init(x: value, y: value)
    case .zero:
      return .zero
    }
  }
}

extension Point where Dimension == CGFloat {
  
  var cgPoint: CGPoint {
    switch self {
    case let .each(x, y):
      return .init(x: x, y: y)
    case let .all(value):
      return .init(x: value, y: value)
    case .zero:
      return .zero
    }
  }
}

#endif
