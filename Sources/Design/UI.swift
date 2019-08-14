//
//  UI.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

/// Defines an object that replaces the responsibility of Interface Builder.
///
/// You can use this protocol to indicate that an object is responsible for UI of another object.
/// (ex. `UIView` or `UIViewController`)
public protocol UI {
  
  associatedtype Owner: UIOwner
  
  /// An object that owns this UI object.
  var owner: Owner { get }
  
  /// A root view of an owner.
  var view: UIView { get }
  
  init(owner: Owner)
}

public extension UI where Owner: UIViewController {
  
  var view: UIView {
    return owner.view
  }
}

public extension UI where Owner: UIView {
  
  var view: UIView {
    return owner
  }
}

#endif
