#ifndef FLUTTER_PLUGIN_ATOMIC_WIDGET_PLUGIN_H_
#define FLUTTER_PLUGIN_ATOMIC_WIDGET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace atomic_widget {

class AtomicWidgetPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AtomicWidgetPlugin();

  virtual ~AtomicWidgetPlugin();

  // Disallow copy and assign.
  AtomicWidgetPlugin(const AtomicWidgetPlugin&) = delete;
  AtomicWidgetPlugin& operator=(const AtomicWidgetPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace atomic_widget

#endif  // FLUTTER_PLUGIN_ATOMIC_WIDGET_PLUGIN_H_
