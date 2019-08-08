//
//  UIOwner.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

protocol UIOwner { }

extension UIViewController: UIOwner { }

extension UIView: UIOwner { }
