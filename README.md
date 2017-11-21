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
   .package(url: "https://github.com/lemire/Swimsuit.git", from: "0.1.2")
    ],
    targets: [
        .target(
            name: "fun",
            dependencies: ["Swimsuit"]),
    ]
)
```

Edit ``main.swift`` (in Sources) so that it looks something like this :

```swift
import Swimsuit;

let nano = Swimsuit.nanotime() {
   print("do something")
}
```

You can run your example as follows:

```bash
swift build --configuration release
$(swift build   --configuration release --show-bin-path)/fun
```

## For Xcode users (Mac Only)

```bash
$ swift package generate-xcodeproj
generated: ./Bitset.xcodeproj
$ open ./Bitset.xcodeproj
```
