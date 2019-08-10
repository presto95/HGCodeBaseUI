//
//  SegmentSetting.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

enum SegmentSetting {
  
  case insert(Segment, index: Int)
  
  case modify(Segment, segmentIndex: Int)
}
