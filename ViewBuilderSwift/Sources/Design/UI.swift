//
//  UI.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

protocol UI {
  
  associatedtype Owner: UIOwner
  
  var owner: Owner { get }
  
  var view: UIView { get }
  
  init(owner: Owner)
}

extension UI where Owner: UIViewController {
  
  var view: UIView {
    return owner.view
  }
}

extension UI where Owner: UIView {
  
  var view: UIView {
    return owner
  }
}
