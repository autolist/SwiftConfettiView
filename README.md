# Swift Confetti View      [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Who%20doesn%27t%20like%20confetti!%20🎉%20%20:&url=https://github.com/ugurethemaydin/SwiftConfettiView&hashtags=cocoapods,repo,swiftconfettiview,developers,swift,ios,confetti,github)

## Related

**This project is an updated version of [ugurethemaydin/SwiftConfettiView](https://github.com/ugurethemaydin/SwiftConfettiView) which was a clone of [sudeepag/SAConfettiView](https://github.com/sudeepag/SAConfettiView).**

Swift Confetti View! Who doesn't like confetti?

![language](https://img.shields.io/badge/Language-%20Swift%20-orange.svg)
![CI Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
[![License](https://img.shields.io/cocoapods/l/SwiftConfettiView.svg?style=flat)](https://cocoapods.org/pods/SwiftConfettiView)
[![Platform](https://img.shields.io/cocoapods/p/SwiftConfettiView.svg?style=flat)](https://cocoapods.org/pods/SwiftConfettiView)


<p align="center">
<img src="https://user-images.githubusercontent.com/3869305/56049372-fc693c00-5d51-11e9-81af-83ecd183b1ec.gif" alt="confetti" width="473.6" height="198">
</p>

It's raining confetti! SwiftConfettiView is the easiest way to add fun, multi-colored confetti to your application and make users feel rewarded. Written in Swift, SwiftConfettiView is a subclass of UIView and is highly customizable. From various types and colors of confetti to different levels of intensity, you can make the confetti as fancy as you want.


To run the example project, clone the repo, and open the Example directory in Xcode 12 or higher.

## Installation

#### Swift Package Manager

*Note: Instructions below are for using **SwiftPM** without the Xcode UI. It's the easiest to go to your Project Settings -> Swift Packages and add Swift Confetti View from there.*

To integrate using Apple's Swift package manager, without Xcode integration, add the following as a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/theoriginalbit/SwiftConfettiView.git", .upToNextMajor(from: "0.2.0"))
```

and then specify `"Swift Confetti View"` as a dependency of the Target in which you wish to use Swift Confetti View.

#### Manual Installation
To manually install SwiftConfettiView, simply add `SwiftConfettiView.swift` to your project. Make sure you copy the assets over into your bundle too!

## Usage

Creating a SwiftConfettiView is the same as creating a UIView:

```swift
let confettiView = SwiftConfettiView(frame: self.view.bounds)
```

Don't forget to add the subview!

```swift
self.view.addSubview(confettiView)
```

### Types

Pick one of the preconfigured types of confetti with the `.type` property, or create your own by providing a custom image. This property defaults to the `.Confetti` type.

##### `.confetti`

![confetti](https://cloud.githubusercontent.com/assets/11940172/11819440/c9db329e-a39a-11e5-9284-b0171bee0f24.gif)

```swift
confettiView.type = .confetti
```

##### `.triangle`

![triangle](https://cloud.githubusercontent.com/assets/11940172/11819211/9b8b758a-a399-11e5-8ed3-2eb92f633628.gif)

```swift
confettiView.type = .triangle
```

##### `.star`

![star](https://cloud.githubusercontent.com/assets/11940172/11819401/90a2188a-a39a-11e5-8a03-ddca3fb52e72.gif)

```swift
confettiView.type = .star
```

##### `.diamond`

![diamond](https://cloud.githubusercontent.com/assets/11940172/11819275/f1c83c08-a399-11e5-8d40-85e9a1879526.gif)

```swift
confettiView.type = .diamond
```

##### `.image`

![image](https://cloud.githubusercontent.com/assets/11940172/11819363/5f4f0dba-a39a-11e5-826b-d198113f50dd.gif)

```swift
confettiView.type = .image(UIImage(named: "smiley")!)
```

### Colors

Set the colors of the confetti with the `.colors` property. This property has a default value of multiple colors. 

``` swift
confettiView.colors = [.red, .green, .blue]
```

### Intensity

The intensity refers to how many particles are generated and how quickly they fall. Set the intensity of the confetti with the `.intensity` property by passing in a value between 0 and 1. The default intensity is 0.5.

``` swift
confettiView.intensity = 0.75
```

### Starting

To start the confetti, use

``` swift
confettiView.startConfetti()
```

### Stopping

To stop the confetti, use

``` swift
confettiView.stopConfetti()
```

### Status

To check if the confetti is active and currently being displayed, use

``` swift
confettiView.isActive
```

Returns `true` if it is being displayed, and `false` if it is not.
