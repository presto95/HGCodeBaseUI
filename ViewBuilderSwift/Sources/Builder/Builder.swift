//
//  Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public struct Builder<Base> {
  
  public let base: Base
  
  public init(base: Base) {
    self.base = base
  }
  
  func build() -> Base {
    return base
  }
}

public protocol BuilderCompatible {
  
  associatedtype BuilderBase
  
  static var builder: Builder<BuilderBase>.Type { get }
  
  var builder: Builder<BuilderBase> { get }
}

extension BuilderCompatible {
  
  public static var builder: Builder<Self>.Type {
    return Builder<Self>.self
  }
  
  public var builder: Builder<Self> {
    return Builder(base: self)
  }
}

// UIView and UIView descendants conforms BuilderCompatible protocol.
extension UIView: BuilderCompatible { }

extension UIBarItem: BuilderCompatible { }

extension UIBarButtonItemGroup: BuilderCompatible { }

#endif
