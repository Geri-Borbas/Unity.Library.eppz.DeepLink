# eppz.DeepLink [![Build Status](https://travis-ci.org/eppz/Unity.Test.eppz.png?branch=master)](https://travis-ci.org/eppz/Unity.Test.eppz)
> part of [**Unity.Library.eppz**](https://github.com/eppz/Unity.Library.eppz)


 Deep linking native iOS plugin for Unity. With deep link callbacks on app launch as well.


## Simple usage

```csharp
// Just provide a lambda.
DeepLink.OnOpenURL((string URL, string sourceApplicationBundleID) =>
{
    // Do something useful with `URL` (and `sourceApplicationBundleID`).
});
```

This action will be called even when the app has launched via deep linking (on the first `Update()` of the plugin class).

> The deep link information will be picked up from both [`application:didFinishLaunchingWithOptions:`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application?language=objc), [`application:openURL:options:`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623112-application?preferredLanguage=occ) (iOS 9.0 and above) and [`application:openURL:sourceApplication:annotation:`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623073-application?language=objc) (from iOS 4.2 to iOS 9.0).

## Sandbox

You can **simulate the callback in the Unity Editor**, when you simply put some values into the `Sandbox` properties at the `DeepLink` inspector. Please note that if a notification is available (an URL value is present), it gets consumed on the next `Update()`, the values from the `Sandbox` properties disappear (this simulates the polling of the native iOS plugin). You can either paste values to the inspector, or disable `DeepLink` component / pause the game while typing.


## License

> Licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).
