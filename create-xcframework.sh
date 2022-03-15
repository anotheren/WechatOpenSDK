xcodebuild archive \
-project WechatOpenSDK.xcodeproj \
-scheme WechatOpenSDK \
-destination "generic/platform=iOS" \
-archivePath "build/iphoneos" \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
-project WechatOpenSDK.xcodeproj \
-scheme WechatOpenSDK \
-destination "generic/platform=iOS Simulator" \
-archivePath "build/iphonesimulator" \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "➡️ iphoneos slice"
xcrun lipo -i "build/iphoneos.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework/WechatOpenSDK"

echo "⚠️ iphonesimulator slice"
xcrun lipo -i "build/iphonesimulator.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework/WechatOpenSDK"

echo "⚠️ remove arm64 for iphonesimulator slice"
#由于 libWeChatSDK.a 中并不包含 arm64-simulator, 故需要移除此处的模拟器 arm64 架构
xcrun lipo -remove arm64 "build/iphonesimulator.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework/WechatOpenSDK" -o "build/iphonesimulator.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework/WechatOpenSDK"

echo "➡️ iphonesimulator slice"
xcrun lipo -i "build/iphonesimulator.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework/WechatOpenSDK"

echo "✅ create xcframework"
xcodebuild -create-xcframework \
-framework "build/iphoneos.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework" \
-framework "build/iphonesimulator.xcarchive/Products/Library/Frameworks/WechatOpenSDK.framework" \
-output "build/WechatOpenSDK.xcframework"
