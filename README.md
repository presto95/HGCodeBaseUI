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
  
  var searchBar: UISearchBar!
  
  var tableView: UITableView!
  
  init(owner: SomeViewController) {
    self.owner = owner
    
    owner.view = .init()
    view.backgroundColor = .white

    // Configuring search bar
    searchBar = ViewBuilder.searchBar()
      .searchBarDelegate(owner)
      .placeholder("Username")
      .searchBarStyle(.minimal)
    
    // Configuring table view
    tableView = ViewBuilder.tableView()
      .register(.cell(.nib(SomeCell.self, reuseIdentifier: "cell")))
      .keyboardDismissMode(.onDrag)
      .tableSectionView(.footer(someView))
  }
}
```

## Builder

You can set properties of UI components by using builder pattern.

- Makes builder by using type methods of `ViewBuilder`
- Makes builder on existing UI component by using `builder()`
- At the end of the method chaining of any builder, you should specify `build()` to make UI component from the builder.

### Example

- Makes a label

```swift
ViewBuilder.label()
  .text(.plain("Hello World!"))
  .textColor(.orange)
  .font(.systemFont(ofSize: 15))
  .build()
```

- Makes a button

```swift
ViewBuilder.button()
  .title(.plain("Hello World!"))
  .contentEdgeInsets(.all(8))
  .build()
```

- Makes a table view

```swift
ViewBuilder.tableView()
  .tableViewDelegate(self)
  .tableViewDataSource(self)
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

- Uses builder pattern on existing UI component

```swift
let label = UILabel()
label.builder()
  .text(.plain("Hello World!"))
```