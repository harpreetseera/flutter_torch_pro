#import "TorchproPlugin.h"
#if __has_include(<torchpro/torchpro-Swift.h>)
#import <torchpro/torchpro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "torchpro-Swift.h"
#endif

@implementation TorchproPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTorchproPlugin registerWithRegistrar:registrar];
}
@end
