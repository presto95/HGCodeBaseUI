//
//  Test.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

class Test {
  
  func test() {
    ViewBuilder.tableView()
      .height(.each(row: 30, sectionHeader: 30, sectionFooter: 30))
      .estimatedHeight(.each(row: 30, sectionHeader: 30, sectionFooter: 30))
      .register(.cell(.nib(.init(nibName: "", bundle: nil), reuseIdentifier: "")))
  }
}
