# react-native-tmk-baidumobstat

## iOS

- 新建一个 React Native 工程，参考[React Native 官网](https://facebook.github.io/react-native/)

  ```bash
  react-native init hello
  cd hello
  yarn add react-native-tmk-baidumobstat
  react-native link
  ```

- 在 iOS 工程的 Linked Frameworks and Libraries, 加入以下依赖

  ```
  libz.tbd
  libc++.tbd
  libicucore.tbd
  ```

- 在 iOS 工程中如果找不到头文件可能要在 TARGETS-> BUILD SETTINGS -> Search Paths -> Header Search Paths 添加如下路径

  ```
  $(SRCROOT)/../node_modules/react-native-tmk-baidumobstat/ios/RCTBaiduMobStat/RCTBaiduMobStat
  ```

- 打开 ios 下的工程，在 AppDelegate.m 内添加百度移动统计的启动代码

  ```objc
  #import "BaiduMobStat.h"

  // - (BOOL)application: didFinishLaunchingWithOptions:
  [[BaiduMobStat defaultStat] startWithAppId:@"xxx"];
  ```

- 在 App.js 内使用对应的接口

## Android

- 新建一个 React Native 工程，参考[React Native 官网](https://facebook.github.io/react-native/)，添加百度移动统计 react native 插件支持

  ```
  react-native install react-native-tmk-baidumobstat
  react-native link react-native-tmk-baidumobstat
  ```

- Application 中注册 sdk package

  ```
  @Override
  protected List<ReactPackage> getPackages() {
      ReactPackage packages[] = new ReactPackage[]{
          new MainReactPackage(),
          new RNBaiduMobStatPackage()
      };
      return Arrays.<ReactPackage>asList(packages);
  }
  ```

- 在 App.js 内使用对应的接口埋点，完成统计
