xcodebuild -project Charts.xcodeproj -configuration Release -sdk iphoneos
xcodebuild -project Charts.xcodeproj -configuration Release -sdk iphonesimulator

cd build

cp -R Release-iphoneos Release-fat

cp -R Release-iphonesimulator/Charts.framework/Modules/Charts.swiftmodule Release-fat/Charts.framework/Modules/Charts.swiftmodule

lipo -create -output Release-fat/Charts.framework/Charts Release-iphoneos/Charts.framework/Charts Release-iphonesimulator/Charts.framework/Charts

lipo -info Release-fat/Charts.framework/Charts

open Release-fat