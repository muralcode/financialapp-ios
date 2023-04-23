# Financialapp-iOS

## Modular

Todo: The codebase will be split into a number of modules(Frameworks), these modules will be constructed on a per feature basis.

iOS Financial app demonstration using Swift, SwiftUI, Core Data and Cocoa Pods

Swift Best Practises used.

## White Labelled

The Financial App codebase was constructed with white-labelling of the app as one of the primary concerns. In the context of the Financial app, white-labelling is taken to mean that the app supports a default configuration, which is this one - Banking - however, the base functionality and appearance of the Financial App can be customized by an individual client.

As a result, this codebase cannot be viewed in isolation and attention must be paid to the information provided as inputs to a given build artefact. For instance, a number of build configuration fields are used at runtime to determine the behaviour and availability of certain App functionality. Additionally, resources such as strings, images and colours may be swapped out at compile-time in order to change the look and feel of the app, matching a client's requirements.

## Note

Currently the app customizations, images and colors are built within the project (for demonstration purposes) but that will change to accomodate white-labelling and cross plartform capabilities.

## Local build process

It is recommended that the information in the other sections of this document are examined prior to attempting to compile and run the app. For the reasons discussed above, a developer cannot simply clone the repository and run the financialApp

### Software Prerequisites

In order to build the iOS Financial app, the following software package is required:
- [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

### Procedure

1. Make sure that you have installed the above listed software on your machine.
2. Checkout the [master](https://github.com/muralcode/financialapp-ios) branch
3. Make sure that your local **master** branch has all the latest changes.

