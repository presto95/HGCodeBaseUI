//
//  Size.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum Size<Dimension> where Dimension: DimensionProtocol {
  
  case each(width: Dimension, height: Dimension)
  
  case all(Dimension)
  
  case zero
}

extension Size where Dimension == Int {
  
  var cgSize: CGSize {
    switch self {
    case let .each(width, height):
      return .init(width: width, height: height)
    case let .all(value):
      return .init(width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

extension Size where Dimension == Double {
  
  var cgSize: CGSize {
    switch self {
    case let .each(width, height):
      return .init(width: width, height: height)
    case let .all(value):
      return .init(width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

extension Size where Dimension == CGFloat {
  
  var cgSize: CGSize {
    switch self {
    case let .each(width, height):
      return .init(width: width, height: height)
    case let .all(value):
      return .init(width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

#endif
