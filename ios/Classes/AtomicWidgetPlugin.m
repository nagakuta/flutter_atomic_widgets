#import "AtomicWidgetPlugin.h"
#if __has_include(<atomic_widget/atomic_widget-Swift.h>)
#import <atomic_widget/atomic_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "atomic_widget-Swift.h"
#endif

@implementation AtomicWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAtomicWidgetPlugin registerWithRegistrar:registrar];
}
@end
