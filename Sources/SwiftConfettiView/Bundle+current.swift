import Foundation

extension Bundle {
    static let CocoaPodsBundleName = "SwiftConfettiView"

    class var current: Bundle? {
        #if SWIFT_PACKAGE
        // Preprocessor definition documented here:
        // https://github.com/apple/swift-package-manager/blob/main/Documentation/Usage.md#packaging-legacy-code
        return Bundle.module
        #else
        let rootBundle = Bundle(for: SwiftConfettiView.self)
        guard let bundlePath = rootBundle.path(forResource: Self.CocoaPodsBundleName, ofType: "bundle") else {
            return rootBundle
        }
        return Bundle(path: bundlePath)
        #endif
    }
}
