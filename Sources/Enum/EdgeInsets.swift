//
//  EdgeInsets.swift
//  ViewBuilderSwift
//
//  Created by Presto on .zero9/.zero8/2.zero19.
//  Copyright © 2.zero19 presto. All rights reserved.
//

#if os(iOS)

public enum EdgeInsets {
  
  case each(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
  
  case symmetric(horizontal: CGFloat, vertical: CGFloat)
  
  case all(CGFloat)
  
  case top(CGFloat)
  
  case left(CGFloat)
  
  case bottom(CGFloat)
  
  case right(CGFloat)
  
  case horizontal(CGFloat)
  
  case vertical(CGFloat)
  
  case topLeft(CGFloat)
  
  case topRight(CGFloat)
  
  case bottomLeft(CGFloat)
  
  case bottomRight(CGFloat)
  
  case zero
}

extension EdgeInsets {
  
  var uiEdgeInsets: UIEdgeInsets {
    switch self {
    case let .each(top, left, bottom, right):
      return .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      return .init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    case let .all(value):
      return .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      return .init(top: value, left: .zero, bottom: .zero, right: .zero)
    case let .left(value):
      return .init(top: .zero, left: value, bottom: .zero, right: .zero)
    case let .bottom(value):
      return .init(top: .zero, left: .zero, bottom: value, right: .zero)
    case let .right(value):
      return .init(top: .zero, left: .zero, bottom: .zero, right: value)
    case let .horizontal(value):
      return .init(top: .zero, left: value, bottom: .zero, right: value)
    case let .vertical(value):
      return .init(top: value, left: .zero, bottom: value, right: .zero)
    case let .topLeft(value):
      return .init(top: value, left: value, bottom: .zero, right: .zero)
    case let .topRight(value):
      return .init(top: value, left: .zero, bottom: .zero, right: value)
    case let .bottomLeft(value):
      return .init(top: .zero, left: value, bottom: value, right: .zero)
    case let .bottomRight(value):
      return .init(top: .zero, left: .zero, bottom: value, right: value)
    case .zero:
      return .zero
    }
  }
}

#endif
