# [Teliver](http://www.teliver.io)

[![Pod Version](https://img.shields.io/badge/pod-v1.0.0-yellowgreen.svg)](http://cocoadocs.org/docsets/Smooch/)
[![Platform](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](http://cocoadocs.org/docsets/Smooch/)
[![License](https://img.shields.io/badge/License-commercial-orange.svg)](http://smooch.io/terms.html)

Teliver is your one place stop for all GPS Based Location tracking solutions. With simplified integrations for iOS and Android, Teliver synchronizes with applications that require location tracking. Advanced options with the inclusion of Custom markers, Multiple Operator Tracking and Push notifications to enhance user satisfaction and business productivity are accomplished.

Live locality shares are now taken a step forward with Teliver. Real time activity stream for On-Demand applications are built on certain crucial qualities:

- Accuracy: the base quality being accuracy, Teliver strives in delivering the best of results.
- Multi Business Solutions: Real-Time solutions for business requiring it is delivered with precision.
- Advanced Customization: With micro managerial possibilities, the opportunity to customize is practically infinite.

Create your teliver account today : [http://stagingapp.teliver.io](http://stagingapp.teliver.io).

CocoaPods:

    pod 'teliver'
    pod update

Swift:

In AppDelegate.swift, Do the following 

```Swift

import teliver

```
in didFinishLaunchingWithOptions method,

```Swift 

let settings = TeliverSettings.init(withAppKey: "YOURAPPTOKEN")
Teliver.init(withTeliverSettings: settings)

```



Obj-C:

In AppDelegate.swift, Do the following 

```objc

@import teliver;

```

in didFinishLaunchingWithOptions method,

```objc

TeliverSettings* settings = [[TeliverSettings alloc]initWithAppKey:@"YOURAPPTOKEN"];
[[Teliver alloc]initWithTeliverSettings:settings];

```


Our [Docs and full install guide](http://docs.teliver.io).
