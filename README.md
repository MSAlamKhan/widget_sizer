<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# widget_sizer

Create stunning, responsive UIs effortlessly with SizeConfig, ensuring a flawless experience across all mobile devices and tablets.

## Introduction

widget_sizer provides a comprehensive solution for creating responsive UIs that adapt seamlessly across various screen sizes and device types. It includes utilities to scale UI elements proportionally based on the screen dimensions.

# Getting started


## Installation

Add the following line to your `pubspec.yaml`:

```yaml
dependencies:
widget_sizer : ^1.0.0
```
## Add the following imports to your Dart code: 

```dart
import 'package:# widget_sizer/widget_sizer.dart';
```

## Usage

Call the SizerConfig().init() method within your app's build method of your main widget:

```dart
@override
 Widget build(BuildContext context) {
    // Initialize SizeConfig
     SizerConfig().init(context);
  
    return MaterialApp(
      title: 'SizeConfig Demo',
      home: HomePage(),
    );
 }
```

## Scaling Double Values 

All methods in this package return a `double` value which can be directly used in widgets that require a `double` value:

```dart
// Example
Text("Size Matters",style: 
TextStyle(fontSize: SizeConfig.moderateScale(20),),
),

SizedBox(
    height: SizeConfig.verticalScale(30),
),

Container(
    width:SizeConfig.scale(30),
    height: SizeConfig.verticalScale(30),
),
```

## Scaling EdgeInsets 

For widgets that require an EdgeInsetsGeometry value, use the method within an EdgeInsets constructor:

```dart
// Example
Padding(
  padding: EdgeInsets.all(SizeConfig.scale(40)),
  child: Widget(),
)
```


## Methods

# init(BuildContext context)
This method initializes the SizeConfig class with the screen dimensions of the current device. It must be called before using any of the scaling methods. (It is recommended to call this method in you main.dart file to access the SizeConfig across the app)

# static double scale(double size)
Scales the given size proportionally based on the screen width.

# static double verticalScale(double size)
Scales the given size proportionally based on the screen height.

# static double moderateScale(double size, [double factor = 0.5])
Applies a moderate scaling to the given size based on the screen width. The optional factor parameter allows you to control the degree of scaling.

# static double moderateVerticalScale(double size, [double factor = 0.5])
Applies a moderate scaling to the given size based on the screen height. The optional factor parameter allows you to control the degree of scaling.

