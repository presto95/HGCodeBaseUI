//
//  Test.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

class Test {
  
  func test() {
    ViewBuilder.segmentedControl()
      .contentOffset(.all(3), forSegmentAt: 3)
  }
}
