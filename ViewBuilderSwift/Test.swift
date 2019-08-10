//
//  Test.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

class Test: UIViewController {
  
  func test() {
    UILabel().builder
      .text(.attributed("Hello World!", attributes: [.font: UIFont.systemFont(ofSize: 12)]))
      .numberOfLines(0)
      .textAlignment(.center)
      .lineBreakMode(.byWordWrapping)
      .shadow(.each(color: .black, offset: .all(4)))
      .subview(of: view)
      .constraints { $0.center.equalToSuperview() }
    
    UISwitch().builder
      .isOn(false)
      .tintColor(.each(on: .green, off: .blue, thumb: .black))
      .subview(of: view)
      .constraints { $0.center.equalToSuperview() }
  }
}
