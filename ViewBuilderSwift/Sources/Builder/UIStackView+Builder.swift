//
//  UIStackView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIStackView {
  
  // MARK: - Managing Arranged Subviews
  
  @discardableResult
  func arrangedSubview(_ view: UIView) -> Builder {
    base.addArrangedSubview(view)
    return self
  }
  
  @discardableResult
  func arrangedSubview(_ view: UIView, at index: Int) -> Builder {
    base.insertArrangedSubview(view, at: index)
    return self
  }
  
  // MARK: - Configuring The Layout
  
  @discardableResult
  func alignment(_ alignment: UIStackView.Alignment) -> Builder {
    base.alignment = alignment
    return self
  }
  
  @discardableResult
  func axis(_ axis: NSLayoutConstraint.Axis) -> Builder {
    base.axis = axis
    return self
  }
  
  @discardableResult
  func isBaselineRelativeArrangement(_ flag: Bool) -> Builder {
    base.isBaselineRelativeArrangement = flag
    return self
  }
  
  @discardableResult
  func distribution(_ distribution: UIStackView.Distribution) -> Builder {
    base.distribution = distribution
    return self
  }
  
  @discardableResult
  func isLayoutMarginsRelativeArrangement(_ flag: Bool) -> Builder {
    base.isLayoutMarginsRelativeArrangement = flag
    return self
  }
  
  @discardableResult
  func spacing(_ spacing: CGFloat) -> Builder {
    base.spacing = spacing
    return self
  }
  
  // MARK: - Adding Space Between Items
  
  @discardableResult
  func customSpacing(_ spacing: CGFloat, after view: UIView) -> Builder {
    base.setCustomSpacing(spacing, after: view)
    return self
  }
}

#endif
