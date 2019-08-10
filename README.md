**🚧 Under Development 🚧**

# ViewBuilderSwift

**View Setting with View-Independent Object and Builder**

It will help to write UI without Interface Builder.

## View-Independent Object

**Replace the role of Interface Builder with a single source code file**

```swift
protocol UI
```

`UI` protocol is conformed by a class that replaces the role of the Interface Builder.

```swift
protocol UIOwner
```

`UIOwner` protocol represents the type that owns the `UI` .

By default, `UIViewController` and `UIView` conforms `UIOwner` .

### Example

```swift
final class SomeViewController: UIViewController {
  
  private var viewUI: SomeUI!
  
  override func loadView() {
    viewUI = .init(owner: self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do something
  }
}
```

```swift
final class SomeUI: UI {
 
  unowned var owner: SomeViewController
  
  var searchBar = UISearchBar()
  
  var tableView = UITableView()
  
  init(owner: SomeViewController) {
    self.owner = owner
    
    owner.view = .init()
    view.backgroundColor = .white

    // Configuring search bar
    searchBar.builder
      .delegate(owner)
      .placeholder("Username")
      .style(.searchBar(.minimal))
    
    // Configuring table view
    tableView.builder
      .register(.cell(.nib(SomeCell.self, reuseIdentifier: "cell")))
      .keyboardDismissMode(.onDrag)
      .tableSectionView(.footer(someView))
  }
}
```

## Builder

You can set properties of UI components by using builder pattern.

- Enters to a builder by using `builder` property of UI components.
- At the end of the method chaining of any builder, you should specify `build()` method to retrieve the UI component from the builder.

### Example

- Makes a label

```swift
// Sets some properties to use `builder`.
let label = UILabel()
label.builder
  .text(.plain("Hello World!"))
  .textColor(.blue)
  .font(.systemFont(ofSize: 15))

// Assigns the result to some variable.
// You should call `build` method to retrieve the result of builder.
let label = UILabel().builder
  .text(.plain("Hello World!"))
  .textColor(.blue)
  .font(.systemFont(ofSize: 15))
  .subview(of: someView)
  .constraints { $0.center.equalToSuperview() }
  .build()

// You can also build without assigning the result to some variable.
UILabel().builder
  .text(.attributed("Hello World!", attributes: [.font: UIFont.systemFont(ofSize: 15)]))
  .numberOfLines(0)
  .textAlignment(.center)
  .lineBreakMode(.byWordWrapping)
  .shadow(.each(color: .black, offset: .all(4)))
  // You can also set constraints by using the closure of `subview` family methods.
  // It guarantees that constraints are set after the `self` is added as the subview.
  .subview(of: someView) { $0.center.equalToSuperview() }
```

- Makes a button

```swift
let button = UIButton().builder
  .title(.plain("Hello World!"))
  .contentEdgeInsets(.symmetric(horizontal: 8, vertical: 4))
  .build()
```

- Makes a table view

```swift
let tableView = UITableView().builder
  .delegate(self)
  .dataSource(self)
  .register(.cell(.nib(someNib, reuseIdentifier: "cell")))
  .register(.headerFooter(.class(someClass, reuseIdentifier: "headerFooter")))
  .height(.row(80))
  .height(.sectionHeaderFooter(8))
  .separator(.style(style))
  .allowsSelection(.each(single: true, multiple: true))
  .allowsSelectionDuringEditing(.single(true))
  .allowsSelectionDuringEditing(.multiple(false))
  .build()
```

## Misc.

### Dependent Library

- SnapKit