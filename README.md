# [Teliver](https://teliver.io)

[![Pod Version](https://img.shields.io/badge/cocoapod-v1.1.5-blue.svg)](http://cocoadocs.org/docsets/teliver/) [![XCode Version](https://img.shields.io/badge/xcode-10.2-orange.svg)]() [![Swift Version](https://img.shields.io/badge/swift-v5.0-green.svg)]() [![CocoaPods](https://img.shields.io/cocoapods/dt/teliver.svg?style=plastic)]() [![Platform](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](http://cocoadocs.org/docsets/teliver/) [![License](https://img.shields.io/badge/License-commercial-orange.svg)](https://teliver.io/terms/)

Teliver is your one place stop for all GPS Based Location tracking solutions. With simplified integrations for iOS and Android, Teliver synchronizes with applications that require location tracking. Advanced options with the inclusion of Custom markers, Multiple Operator Tracking and Push notifications to enhance user satisfaction and business productivity are accomplished.

Live locality shares are now taken a step forward with Teliver. Real time activity stream for On-Demand applications are built on certain crucial qualities:

- Accuracy: the base quality being accuracy, Teliver strives in delivering the best of results.
- Multi Business Solutions: Real-Time solutions for business requiring it is delivered with precision.
- Advanced Customization: With micro managerial possibilities, the opportunity to customize is practically infinite.

Create your teliver account today : [https://app.teliver.io](https://app.teliver.io).

For more details : [https://teliver.io](https://teliver.io).

CocoaPods:

    pod 'teliver'
    pod update

For Swift 4 and below, use teliver v1.1.3
    
    pod 'teliver', '1.1.3'

Swift:

In AppDelegate.swift, Do the following 

```Swift

import teliver

```
in didFinishLaunchingWithOptions method,

```Swift 

let settings = TeliverSettings.init(withAppKey: "TELIVER_APP_KEY")
Teliver.init(withTeliverSettings: settings)

```



Obj-C:

In AppDelegate.swift, Do the following 

```objc

@import teliver;

```

in didFinishLaunchingWithOptions method,

```objc

TeliverSettings* settings = [[TeliverSettings alloc]initWithAppKey:@"TELIVER_APP_KEY"];
[[Teliver alloc]initWithTeliverSettings:settings];

```


Our [Docs and full install guide](https://docs.teliver.io).
