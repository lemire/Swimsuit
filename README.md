## Swimsuit : A Swift library for accurate benchmarks

## Complete example for library users

Create a directory where you will create your application:

```bash
mkdir fun
cd fun
swift package init --type executable
```

Then edit ``Package.swift`` so that it reads:


```swift
import PackageDescription

let package = Package(
    name: "fun",
    dependencies: [
   .Package(url: "https://github.com/lemire/Swimsuit.git",  majorVersion: 0)
    ]
)
```

Edit ``Sources/main.swift`` so that it looks something like this :

```swift
import Swimsuit;

let nano = Swimsuit.nanotime() {
   print("do something")
}
```

You can run your example as follows:

```bash
swift build --configuration release
.build/release/fun
```
