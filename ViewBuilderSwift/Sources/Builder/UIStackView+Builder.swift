//
//  UIStackView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIStackView {
  
  // MARK: - Helper
  
  /// Helper associated with **stack view layout** setting feature.
  ///
  /// - `alignment` case for `alignment` property setter.
  /// - `axis` case for `axis `property setter.
  /// - `distribution` case for `distribution` property setter.
  /// - `spacing` case for `spacing` property setter.
  @discardableResult
  func layout(_ layout: StackViewBuilder.Layout) -> Builder {
    switch layout {
    case let .each(alignment, axis, distribution, spacing):
      base.alignment = alignment
      base.axis = axis
      base.distribution = distribution
      base.spacing = spacing
    case let .alignment(alignment):
      base.alignment = alignment
    case let .axis(axis):
      base.axis = axis
    case let .distribution(distribution):
      base.distribution = distribution
    case let .spacing(spacing):
      base.spacing = spacing
    }
    return self
  }
  
  // MARK: - Managing Arranged Subviews
  
  /// Wrapper of `addArrangedSubview(_:)` method.
  @discardableResult
  func arrangedSubview(_ view: UIView) -> Builder {
    base.addArrangedSubview(view)
    return self
  }
  
  /// Wrapper of `insertArrangedSubview(_:at:)` method.
  @discardableResult
  func arrangedSubview(_ view: UIView, at index: Int) -> Builder {
    base.insertArrangedSubview(view, at: index)
    return self
  }
  
  // MARK: - Configuring The Layout
  
  /// Wrapper of `alignment` property setter.
  @discardableResult
  func alignment(_ alignment: UIStackView.Alignment) -> Builder {
    base.alignment = alignment
    return self
  }
  
  /// Wrapper of `axis` property setter.
  @discardableResult
  func axis(_ axis: NSLayoutConstraint.Axis) -> Builder {
    base.axis = axis
    return self
  }
  
  /// Wrapper of `isBaselineRelativeArrangement` property setter.
  @discardableResult
  func isBaselineRelativeArrangement(_ flag: Bool) -> Builder {
    base.isBaselineRelativeArrangement = flag
    return self
  }
  
  /// Wrapper of `distribution` property setter.
  @discardableResult
  func distribution(_ distribution: UIStackView.Distribution) -> Builder {
    base.distribution = distribution
    return self
  }
  
  /// Wrapper of `isLayoutMarginsRelativeArrangement` property setter.
  @discardableResult
  func isLayoutMarginsRelativeArrangement(_ flag: Bool) -> Builder {
    base.isLayoutMarginsRelativeArrangement = flag
    return self
  }
  
  /// Wrapper of `spacing` property setter.
  @discardableResult
  func spacing(_ spacing: CGFloat) -> Builder {
    base.spacing = spacing
    return self
  }
  
  // MARK: - Adding Space Between Items
  
  /// Wrapper of `setCustomSpacing(_:after:)` method.
  @discardableResult
  func customSpacing(_ spacing: CGFloat, after view: UIView) -> Builder {
    base.setCustomSpacing(spacing, after: view)
    return self
  }
}

#endif
