An example project for experimenting with shared dependencies.

The [`TargetSharingKit`](TargetSharingKit) package contains 3 targets:

 - [`Working`](TargetSharingKit/Working) - a set of utilities for use in the app.
 - [`Testing`](TargetSharingKit/Testing) - a set of utilities for use in unit tests and UI tests.
 - [`Environment`](TargetSharingKit/Environment) - A utility that helps determine whether the app is running in a unit test or UI test, and a utility to configure `XCUIApplication` with required launch arguments.

The package defines 2 products:

- `AppKit` - includes the `Working` target and is linked by the Xcode target `TargetSharingExample`.
- `TestKit` - includes the `Testing` target and is linked by the Xcode targets `TargetSharedExampleTests` and `TargetSharedExampleUITests`

The challenge is to leverage the `Environment` target in both `Working` and `Testing`.

Adding it as a dependency in both will cause the following error when resolving package dependencies:

> Swift package target 'Environment' is linked as a static library by 'TargetSharingExampleTests' and 'TargetSharingExample'. This will result in duplication of library code.

