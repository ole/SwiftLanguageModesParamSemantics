Testing how `swiftLanguageModes`/`swiftLanguageVersions` in SwiftPM behaves.

## Usage

1. Pick which tools version you want to test.

   The repo comes with several `Package.swift` variants, written for different tools versions. Pick the one you want to test by copying/renaming it to `Package.swift`. For example:
   
   ```sh
   cp Package-4.2.swift Package.swift
   ```
   
   Note: The filenames deliberately do not follow the SwiftPM convention to provide different manifests to  different compiler versions (e.g. `Package@swift-5.11.swift`). This makes it clear that `Package.swift` is always the chosen manifest, and it allows you to test old manifest versions with modern compiler versions. 

2. Check out the `swiftLanguageModes`/`swiftLanguageVersions` argument in your chosen `Package.swift`. Comment in/out different values in the array to test different combinations.

3. Run `swift run` to run the program. It will print both the compiler version and language mode with which it was compiled.

## Results

All of these were compiled with the Swift 6.1 compiler.

### Package-4.2.swift

```
Swift compiler 6.0 or later
Swift language mode 4
```

### Package-5.11.swift

```
Swift compiler 6.0 or later
Swift language mode 5
```

### Package-6.0.swift with `swiftLanguageModes: [.v5]`

```
Swift compiler 6.0 or later
Swift language mode 5
```

### Package-6.0.swift with `swiftLanguageModes: [.v5, .v6]`

```
Swift compiler 6.0 or later
Swift language mode 6 or later
```
