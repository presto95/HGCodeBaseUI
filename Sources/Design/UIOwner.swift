//
//  UIOwner.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

/// Defines an object that indicates that the object can own a UI that conforms `UI` protocol.
/// (ex. `UIView` or `UIViewController`)
public protocol UIOwner { }

extension UIViewController: UIOwner { }

extension UIView: UIOwner { }

#endif
