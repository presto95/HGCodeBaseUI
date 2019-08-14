# ViewBuilderSwift

![Cocoapods](https://img.shields.io/cocoapods/v/ViewBuilderSwift) ![Cocoapods platforms](https://img.shields.io/cocoapods/p/ViewBuilderSwift) ![Language](https://img.shields.io/badge/swift-%3E%3D4.2-orange)  ![License](https://img.shields.io/cocoapods/l/ViewBuilderSwift)

This will make it easier for you to **write UI without Interface Builder** by taking advantage of two features:

## Features

### Design for Writing UI with Code

```swift
protocol UI
```

`UI` protocol is conformed by a class that replaces the role of the Interface Builder.

```swift
protocol UIOwner
```

`UIOwner` protocol represents the type that owns the `UI`.

By default, `UIViewController` and `UIView` conforms `UIOwner`.

#### Example

```swift
final class SomeViewController: UIViewController {
  
  private var viewUI: SomeUI!
  
  override func loadView() {
    viewUI = .init(owner: self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do something with `viewUI.label`...
  }
}
```

```swift
final class SomeUI: UI {
  
  // Recommended to set `owner` as an unowned variable.
  unowned var owner: SomeViewController
  
  // Recommended to define UI components using `lazy` keyword.
  lazy var label = UILabel()
  
  init(owner: SomeViewController) {
    self.owner = owner
    
    owner.view = .init()
    view.backgroundColor = .white
    
    // Configuring label...
  }
}
```

**Note** | You must write `owner.view = .init()` at top of  `init(owner: Owner)` when you initialize UI at `loadView()` method. Otherwise the app will crash because any view controller's `view` property is assigned after `loadView()` method is called.

### Property Setting with Method Chaining

This code block...

```swift
let label = UILabel()
label.text = "Hello World!"
label.textColor = .blue
label.font = .systemFont(ofSize: 15)
label.numberOfLines = 1
label.lineBreakMode = .byWordWrapping
```

can be substituted by the following code block.

```swift
let label = UILabel().builder
  .text("Hello World!")
  .textColor(.blue)
  .font(.systemFont(ofSize: 15))
  .numberOfLines(1)
  .lineBreakMode(.byWordWrapping)
  .build()
```

You can use a wrapper for an existing API, but you can also use several helper methods.

By using helpers, you can replace the code above with the code below.

```swift
let label = UILabel().builder
  .text(.plain("Hello World"))
  .textStyle(.color(.blue))
  .textStyle(.font(.systemFont(ofSize: 15)))
  .numberOfLines(1)
  .lineBreakMode(.byWordWrapping)
  .build()
```

You can also use builders after the object is initialized.

```swift
let label = UILabel()
label.builder
  .text(.plain("Hello World"))
  .textStyle(.color(.blue))
  .textStyle(.font(.systemFont(ofSize: 15)))
  .numberOfLines(1)
  .lineBreakMode(.byWordWrapping)
```

In addition to text settings, it also provides helper methods for setting coordinates(`CGPoint`), size(`CGSize`), rectangle(`CGRect`), edge insets(`UIEdgeInsets`), and more.

## Dependencies

- [SnapKit](https://github.com/SnapKit/SnapKit) >= 5.0.0

## Requrements

- Swift 4.2 / iOS

## Installation

ViewBuilderSwift supports Cocoapods only.

### Podfile

```yaml
pod 'ViewBuilderSwift'
```

```sh
pod install
```

## License

ViewBuilderSwift is under MIT license. See the [LICENSE](https://github.com/presto95/ViewBuilderSwift/blob/master/LICENSE) for more info.

