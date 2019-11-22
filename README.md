# react-native-than-base-bridge

## Getting started

`$ npm install react-native-than-base-bridge --save`

### Mostly automatic installation

`$ react-native link react-native-than-base-bridge`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-than-base-bridge` and add `ThanBaseBridge.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libThanBaseBridge.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.ThanBaseBridgePackage;` to the imports at the top of the file
  - Add `new ThanBaseBridgePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-than-base-bridge'
  	project(':react-native-than-base-bridge').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-than-base-bridge/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-than-base-bridge')
  	```


## Usage 
```javascript
import ThanBaseBridge from 'react-native-than-base-bridge'; 
```

## Gallery
```

```
