// Generated by Apple Swift version 4.0.3 effective-3.2.3 (swiftlang-900.0.74.1 clang-900.0.39.2)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_attribute(external_source_symbol)
# define SWIFT_STRINGIFY(str) #str
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name) _Pragma(SWIFT_STRINGIFY(clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in=module_name, generated_declaration))), apply_to=any(function, enum, objc_interface, objc_category, objc_protocol))))
# define SWIFT_MODULE_NAMESPACE_POP _Pragma("clang attribute pop")
#else
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name)
# define SWIFT_MODULE_NAMESPACE_POP
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR __attribute__((enum_extensibility(open)))
# else
#  define SWIFT_ENUM_ATTR
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if __has_feature(modules)
@import ObjectiveC;
@import Foundation;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

SWIFT_MODULE_NAMESPACE_PUSH("teliver")

SWIFT_CLASS("_TtC7teliver7QKTrips")
@interface QKTrips : NSObject
@property (nonatomic, copy) NSString * _Nonnull trackingId;
@property (nonatomic, copy) NSString * _Nonnull status;
@property (nonatomic, copy) NSString * _Nonnull agentId;
@property (nonatomic, copy) NSArray<NSNumber *> * _Nonnull startLocation;
@property (nonatomic, copy) NSArray<NSNumber *> * _Nonnull endLocation;
@property (nonatomic, copy) NSString * _Nonnull tripId;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class TeliverSettings;
@class UIViewController;
enum TeliverUserTypes : NSInteger;

/// Teliver: This class is the interface for the SDK exposed methods.
SWIFT_CLASS("_TtC7teliver7Teliver")
@interface Teliver : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull SDKVersion;)
+ (NSString * _Nonnull)SDKVersion SWIFT_WARN_UNUSED_RESULT;
/// @abstract Initialize the Teliver SDK with the provided settings.
/// @discussion This may only be called once (preferably, in application:didFinishLaunchingWithOptions:).
/// @param settings The settings to use. Refer @TeliverSettings for more information.
- (nonnull instancetype)initWithTeliverSettings:(TeliverSettings * _Nonnull)settings OBJC_DESIGNATED_INITIALIZER;
/// @abstract Register Teliver Delegates for SDK Callbacks.
/// @discussion Register Teliver Delegates for SDK Callbacks for a view controller.
/// @param controller UIViewController where delegates have been registered.
+ (void)registerTeliverDelegateOnViewController:(UIViewController * _Nullable)controller;
/// @abstract Identify User for Teliver.
/// @discussion Register the the user with teliver to be identified. By Default, User is considered as Consumer.
/// @param username The username of a user to map the push notification token.
+ (void)identifyUserForUser:(NSString * _Nonnull)username ofType:(enum TeliverUserTypes)type;
/// @abstract UnIdentify User for Teliver.
/// @discussion Unidentify the registered user from Teliver.
/// @param username The username of a user to map with teliver.
+ (void)unIdentifyUserForUser:(NSString * _Nonnull)username;
/// @abstract Indentify Push is from Teliver.
/// @discussion Check the Push received is from Teliver.
/// @param data The data received from APNS Server.
+ (BOOL)isTeliverPushWithData:(NSDictionary * _Nonnull)data SWIFT_WARN_UNUSED_RESULT;
/// @abstract Identify User for Teliver Push Notification with the username.
/// @discussion Register the push notification token to recieve Push Notification from Teliver Server. By Default, User is considered as Consumer.
/// @param username The username of a user to map the push notification token.
/// @param token    The push notification token.
+ (void)identifyUserForUser:(NSString * _Nonnull)username withToken:(NSString * _Nonnull)token;
/// @abstract Identify User for Teliver Push Notification with the username.
/// @discussion Register the push notification token to recieve Push Notification from Teliver Server.
/// @param username The username of a user to map the push notification token.
/// @param token    The push notification token.
/// @param type     The User Type of the User.(Driver or Consumer)
+ (void)identifyUserForUser:(NSString * _Nonnull)username withToken:(NSString * _Nonnull)token withType:(enum TeliverUserTypes)type;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

@class TeliverNotificationBuilder;

@interface Teliver (SWIFT_EXTENSION(teliver))
+ (NSDictionary<NSString *, QKTrips *> * _Nonnull)getCurrentTrips SWIFT_WARN_UNUSED_RESULT;
+ (void)sendEventWithTrackingID:(NSString * _Nonnull)trackingId andNotificationBuilder:(TeliverNotificationBuilder * _Nonnull)build;
@end


@interface Teliver (SWIFT_EXTENSION(teliver))
/// @abstract Register Trip Delegates.
/// @discussion register delegate for Trip callbacks.
/// @param delegate The ViewController.
+ (void)registerTripDelegateOnViewController:(UIViewController * _Nullable)controller;
/// @abstract Request for Location permission.
+ (void)requestLocationPermission;
/// @abstract Start Trip for an operator using TrackingID.
/// @discussion This method helps to start trip from an operator with help of tracking id provided the your service at order(It can be your Order ID).
/// @param trackingId   A tracking id  of a operator.
+ (void)startTripWithTrackingId:(NSString * _Nullable)trackingId;
/// @abstract Stop Trip for an operator using TrackingID.
/// @discussion This method helps to stop trip from an operator with help of tracking id provided at the time of starting the trip.
/// @param trackingId   A tracking id  of a operator.
+ (void)stopTripWithTrackingID:(NSString * _Nonnull)trackingId;
@end



@class TeliverTrackerBuilder;

@interface Teliver (SWIFT_EXTENSION(teliver))
/// @abstract Start tracking the Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track the Driver with help of tracking id provided the Driver at start of his trip. Use can use Teliver Push Service from Driver SDK to recieve tracking id through Push Notification.
/// @param user     A Single Teliver Tracker object of a user to be tracked. Refer @TeliverTracker for more information.
/// @param message  Message to be shown on Navigation Bar.
+ (void)startTrackingForUser:(TeliverTrackerBuilder * _Nonnull)user withNavigationTitle:(NSString * _Nonnull)message;
/// @abstract Start tracking multiple Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track the Driver with help of tracking id provided the Driver at start of his trip. Use can use Teliver Push Service from Driver SDK to recieve tracking id through Push Notification.
/// @param user     A array of Teliver Tracker object of a users to be tracked. Refer @TeliverTracker for more information.
/// @param message  Message to be shown on Navigation Bar.
+ (void)startTrackingForUsers:(NSArray<TeliverTrackerBuilder *> * _Nonnull)users withNavigationTitle:(NSString * _Nonnull)message;
/// @abstract Start tracking multiple Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track the Driver with help of tracking id provided the Driver at start of his trip. You can create your own view controller, The delegates will be called on your view controller. Refer @TeliverTrackingDelegate for more information.
/// @param user     A array of Teliver Tracker object of a users to be tracked. Refer @TeliverTracker for more information.
/// @param viewController  The viewController to which the delegates to be called.
+ (void)startTrackingForUsers:(NSArray<TeliverTrackerBuilder *> * _Nonnull)users onViewController:(UIViewController * _Nonnull)viewController;
/// @abstract Start tracking multiple Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track the Driver with help of tracking id provided the Driver at start of his trip. You can create your own view controller, The delegates will be called on your view controller. Refer @TeliverTrackingDelegate for more information.
/// @param user     A Teliver Tracker object of a users to be tracked. Refer @TeliverTracker for more information.
/// @param viewController  The viewController to which the delegates to be called.
+ (void)startTrackingForUser:(TeliverTrackerBuilder * _Nonnull)user onViewController:(UIViewController * _Nonnull)viewController;
/// @abstract Start tracking Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track multiple Driver with help of tracking id provided the Driver at start of his trip. This method can be used to start track another Driver while tracking another user.
/// This method is only applicable for Tracking on Your view controller. refer @startTrackingFor(user:TeliverTracker,onViewController :viewController:UIViewController)
/// @param users     A array of Teliver Tracker object of a users to be tracked. Refer @TeliverTracker for more information.
+ (void)startBackgroundTrackingForUsers:(NSArray<TeliverTrackerBuilder *> * _Nonnull)users;
/// @abstract Start tracking Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to track the Driver with help of tracking id provided the Driver at start of his trip. This method can be used to start track another Driver while tracking another user.
/// This method is only applicable for Tracking on Your view controller. refer @startTrackingFor(user:TeliverTracker,onViewController :viewController:UIViewController)
/// @param user     A Teliver Tracker object of a users to be tracked. Refer @TeliverTracker for more information.
+ (void)startBackgroundTrackingForUser:(TeliverTrackerBuilder * _Nonnull)user;
/// @abstract Stop tracking Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to stop multiple tracking the Driver with help of tracking id provided the Driver at start of his trip.
/// This method is only applicable for Tracking on Your view controller. refer @startTrackingFor(user:TeliverTracker,onViewController :viewController:UIViewController)
/// @param trackingIds    A array of tracking ids.
+ (void)stopBackgroundTrackingForTrackingIds:(NSArray<NSString *> * _Nonnull)trackingIds;
/// @abstract Stop tracking Driver using the tracking Id provided by the Driver.
/// @discussion This method helps to stop tracking the Driver with help of tracking id provided the Driver at start of his trip.
/// This method is only applicable for Tracking on Your view controller. refer @startTrackingFor(user:TeliverTracker,onViewController :viewController:UIViewController)
/// @param trackingId     A tracking id  of a Driver.
+ (void)stopBackgroundTrackingForTrackingId:(NSString * _Nonnull)trackingId;
@end

typedef SWIFT_ENUM(NSInteger, TeliverCommandTypes) {
  TeliverCommandTypesEvent = 1,
  TeliverCommandTypesStartTrip = 2,
};


SWIFT_PROTOCOL("_TtP7teliver15TeliverDelegate_")
@protocol TeliverDelegate
- (void)didInitializedSDK:(BOOL)initialized message:(NSString * _Nullable)message;
- (void)didUserRegistered:(BOOL)registered message:(NSString * _Nullable)message;
@end


/// Teliver Notification Builder: This class has the whole Notification Settings, for the SDK to Operate.
SWIFT_CLASS("_TtC7teliver26TeliverNotificationBuilder")
@interface TeliverNotificationBuilder : NSObject
/// Array of Users to be Notified. To notify for single user, Send as [“Ram”].
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull users;
/// title for the event Notification. This title will be shown on the push notification.
@property (nonatomic, copy) NSString * _Nonnull title;
@property (nonatomic) enum TeliverCommandTypes command;
/// Payload for the Event.This will be sent as a custom payload along with the Push Notification.
@property (nonatomic, copy) NSString * _Nonnull payload;
/// @abstract Teliver Settings Initializer.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// Teliver Settings: This class has the whole settings, for the SDK to Operate.
SWIFT_CLASS("_TtC7teliver15TeliverSettings")
@interface TeliverSettings : NSObject
/// <ul>
///   <li>
///     Teliver App Id for the SDK.
///   </li>
/// </ul>
@property (nonatomic, copy) NSString * _Nullable appKey;
/// APNS Push Token for the SDK.
@property (nonatomic, copy) NSString * _Nonnull pushToken;
/// Teliver Logs.
@property (nonatomic) BOOL debugging;
/// @abstract Teliver Settings Initializer.
/// @discussion This may only be called once (preferably, in application:didFinishLaunchingWithOptions:).This object is passed as a parameter for Teliver SDK init.
/// @param appKey Teliver App Key.
- (nonnull instancetype)initWithAppKey:(NSString * _Nonnull)appKey OBJC_DESIGNATED_INITIALIZER;
/// @abstract Teliver Settings Initializer.
/// @discussion This may only be called once (preferably, in application:didFinishLaunchingWithOptions:).This object is passed as a parameter for Teliver SDK init.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImage;

/// Teliver Tracker: This class has the objects of the Operator tracker point.
SWIFT_CLASS("_TtC7teliver21TeliverTrackerBuilder")
@interface TeliverTrackerBuilder : NSObject
/// Tracking id of Operator.
@property (nonatomic, copy) NSString * _Nullable trackingId;
/// Message for the marker snippet.
@property (nonatomic, copy) NSString * _Nullable message;
/// Custom Marker Image.
@property (nonatomic, strong) UIImage * _Nullable marker;
/// @abstract Teliver Tracking Initializer.
/// @discussion This method initializes the Operator user object.
/// @param trackingId   Tracking id of the Operator.
/// @param message      Custom message for the Operator.
/// @param marker       Custom Marker image for the Operator.
- (nonnull instancetype)initForTrackingId:(NSString * _Nonnull)trackingId withCustomMessage:(NSString * _Nonnull)message andWithCustomMarker:(UIImage * _Nonnull)marker OBJC_DESIGNATED_INITIALIZER;
/// @abstract Teliver Tracking Initializer.
/// @discussion This method initializes the Operator user object.
/// @param trackingId   Tracking id of the Operator.
/// @param message      Custom message for the Operator.
- (nonnull instancetype)initForTrackingId:(NSString * _Nonnull)trackingId withCustomMessage:(NSString * _Nonnull)message OBJC_DESIGNATED_INITIALIZER;
/// @abstract Teliver Tracker Initializer.
/// @discussion This method initializes the Operator user object.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_PROTOCOL("_TtP7teliver23TeliverTrackingDelegate_")
@protocol TeliverTrackingDelegate
- (void)didStartedTracking:(NSString * _Nullable)trackingId location:(NSArray<NSNumber *> * _Nonnull)location;
- (void)didStoppedTracking:(NSString * _Nullable)trackingId;
- (void)didRecieveUpdateOnTracking:(NSString * _Nullable)trackingId data:(NSDictionary<NSString *, id> * _Nonnull)data;
- (void)didRecieveErrorOnTracking:(NSString * _Nullable)error;
@end

enum TeliverLocationAccuracy : NSInteger;

/// Teliver Trip Builder: This class has the whole Trip Builder Settings, for the SDK to start a trip.
SWIFT_CLASS("_TtC7teliver18TeliverTripBuilder")
@interface TeliverTripBuilder : NSObject
/// Tracking Id.
@property (nonatomic, copy) NSString * _Nullable trackingId;
/// @abstract Teliver Trip Builder Initializer.
/// @param id Tracking ID.
/// @param distance Distance filter.
/// @param accuracy Accuracy filter.
- (nonnull instancetype)initWithForid:(NSString * _Nonnull)id withDistance:(double)distance accuracyLevel:(enum TeliverLocationAccuracy)accuracy OBJC_DESIGNATED_INITIALIZER;
/// @abstract Teliver Trip Builder Initializer.
/// @param id Tracking ID.
/// @param distance Distance filter.
/// @param accuracy Accuracy filter.
/// @param notify Notificaition builder Object.
- (nonnull instancetype)initWithForid:(NSString * _Nonnull)id withDistance:(double)distance accuracyLevel:(enum TeliverLocationAccuracy)accuracy andNoficationBuilder:(TeliverNotificationBuilder * _Nullable)notify OBJC_DESIGNATED_INITIALIZER;
/// @abstract Teliver Settings Initializer.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

typedef SWIFT_ENUM(NSInteger, TeliverLocationAccuracy) {
  TeliverLocationAccuracyBestForNavigation = 1,
  TeliverLocationAccuracyBest = 2,
  TeliverLocationAccuracyNearestTenMeters = 3,
  TeliverLocationAccuracyHundredMeters = 4,
  TeliverLocationAccuracyKilometer = 5,
  TeliverLocationAccuracyThreeKilometers = 6,
};


SWIFT_PROTOCOL("_TtP7teliver19TeliverTripDelegate_")
@protocol TeliverTripDelegate
- (void)didStartedTrip:(NSString * _Nullable)trackingId location:(NSDictionary<NSString *, id> * _Nonnull)location;
- (void)didStoppedTrip:(NSString * _Nullable)trackingId;
- (void)didSendUpdateOnTrip:(NSString * _Nullable)trackingIds location:(NSDictionary<NSString *, id> * _Nonnull)location;
- (void)didRecieveErrorOnTrip:(NSString * _Nullable)error;
@end

typedef SWIFT_ENUM(NSInteger, TeliverUserTypes) {
  TeliverUserTypesDriver = 1,
  TeliverUserTypesConsumer = 2,
  TeliverUserTypesBoth = 3,
};











SWIFT_MODULE_NAMESPACE_POP
#pragma clang diagnostic pop
