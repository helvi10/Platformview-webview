#import "NativewebPlugin.h"
#if __has_include(<nativeweb/nativeweb-Swift.h>)
#import <nativeweb/nativeweb-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nativeweb-Swift.h"
#endif

@implementation NativewebPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativewebPlugin registerWithRegistrar:registrar];
}
@end
