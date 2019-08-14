//
//  Rectangle.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum Rectangle<Dimension> where Dimension: DimensionProtocol {
  
  case each(x: Dimension, y: Dimension, width: Dimension, height: Dimension)
  
  case grouped(origin: Point<Dimension>, size: Size<Dimension>)
  
  case all(Dimension)
  
  case zero
}

public extension Rectangle where Dimension == Int {
  
  var cgRect: CGRect {
    switch self {
    case let .each(x, y, width, height):
      return .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        return .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        return .init(x: x, y: y, width: value, height: value)
      case let (.each(x, y), .zero):
        return .init(x: x, y: y, width: .zero, height: .zero)
      case let (.all(value), .each(width, height)):
        return .init(x: value, y: value, width: width, height: height)
      case let (.all(originValue), .all(sizeValue)):
        return .init(x: originValue, y: originValue, width: sizeValue, height: sizeValue)
      case let (.all(value), .zero):
        return .init(x: value, y: value, width: .zero, height: .zero)
      case let (.zero, .each(width, height)):
        return .init(x: .zero, y: .zero, width: width, height: height)
      case let (.zero, .all(value)):
        return .init(x: .zero, y: .zero, width: value, height: value)
      case (.zero, .zero):
        return .zero
      }
    case let .all(value):
      return .init(x: value, y: value, width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

public extension Rectangle where Dimension == Double {
  
  var cgRect: CGRect {
    switch self {
    case let .each(x, y, width, height):
      return .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        return .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        return .init(x: x, y: y, width: value, height: value)
      case let (.each(x, y), .zero):
        return .init(x: x, y: y, width: .zero, height: .zero)
      case let (.all(value), .each(width, height)):
        return .init(x: value, y: value, width: width, height: height)
      case let (.all(originValue), .all(sizeValue)):
        return .init(x: originValue, y: originValue, width: sizeValue, height: sizeValue)
      case let (.all(value), .zero):
        return .init(x: value, y: value, width: .zero, height: .zero)
      case let (.zero, .each(width, height)):
        return .init(x: .zero, y: .zero, width: width, height: height)
      case let (.zero, .all(value)):
        return .init(x: .zero, y: .zero, width: value, height: value)
      case (.zero, .zero):
        return .zero
      }
    case let .all(value):
      return .init(x: value, y: value, width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

public extension Rectangle where Dimension == CGFloat {
  
  var cgRect: CGRect {
    switch self {
    case let .each(x, y, width, height):
      return .init(x: x, y: y, width: width, height: height)
    case let .grouped(origin, size):
      switch (origin, size) {
      case let (.each(x, y), .each(width, height)):
        return .init(x: x, y: y, width: width, height: height)
      case let (.each(x, y), .all(value)):
        return .init(x: x, y: y, width: value, height: value)
      case let (.each(x, y), .zero):
        return .init(x: x, y: y, width: .zero, height: .zero)
      case let (.all(value), .each(width, height)):
        return .init(x: value, y: value, width: width, height: height)
      case let (.all(originValue), .all(sizeValue)):
        return .init(x: originValue, y: originValue, width: sizeValue, height: sizeValue)
      case let (.all(value), .zero):
        return .init(x: value, y: value, width: .zero, height: .zero)
      case let (.zero, .each(width, height)):
        return .init(x: .zero, y: .zero, width: width, height: height)
      case let (.zero, .all(value)):
        return .init(x: .zero, y: .zero, width: value, height: value)
      case (.zero, .zero):
        return .zero
      }
    case let .all(value):
      return .init(x: value, y: value, width: value, height: value)
    case .zero:
      return .zero
    }
  }
}

#endif
