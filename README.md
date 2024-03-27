# defer_load_web

1. In the `index.html`, remove the canvaskit cdn script and add the following in the head tag:
   ```html
   <script>
     window.flutterConfiguration = {
       canvasKitBaseUrl: "/canvaskit/"
     };
   </script>
   ```
   This will get the canvaskit from our local bundle. [Refer](https://github.com/AslamThachapalli/deferred-loading-flutter-web/blob/a0778334431cf4e8eaf36704d9cf9e2db617ed31/web/index.html#L35)
2. Add the *Roboto* font locally in our assets. This will not download it from the gstatic. [Refer](https://github.com/AslamThachapalli/deferred-loading-flutter-web/blob/a0778334431cf4e8eaf36704d9cf9e2db617ed31/pubspec.yaml#L30)
3. Remove CupertinoIcons from dependencies if it is not used. This will not download it unnecessarily. [Refer](https://github.com/AslamThachapalli/deferred-loading-flutter-web/blob/a0778334431cf4e8eaf36704d9cf9e2db617ed31/pubspec.yaml#L19)

4. References: [[1]](https://github.com/flutter/flutter/issues/46589#issuecomment-1427138076) [[2]](https://github.com/flutter/flutter/issues/46589#issuecomment-1427143688)
5. **Optional**: Disable the page Transition for web. This will slightly increase the percieved performance. Nb: Not related to initial load. [Refer](https://github.com/AslamThachapalli/deferred-loading-flutter-web/blob/a0778334431cf4e8eaf36704d9cf9e2db617ed31/lib/main.dart#L22).  [Related Article](https://medium.com/flutter/improving-perceived-performance-with-image-placeholders-precaching-and-disabled-navigation-6b3601087a2b)
