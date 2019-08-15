//
//  UIOwner.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/// Defines a protocol that represents the object
/// 0that can own an object that conforms to `UI` protocol.
public protocol UIOwner {
  
  associatedtype UIType: UI
  
  /// An object that contains UI elements for this object.
  ///
  /// It must conforms `UI` protocol.
  var viewUI: UIType! { get }
}
