//
//  Test.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

class Test {
  
  func test() {
    let asdf = UIActivityIndicatorView().builder
      .constraints { $0.center.equalToSuperview() }
      .color(.white)
      .hidesWhenStopped(true)
      .subview(of: .init())
      .build()
    
  }
}
