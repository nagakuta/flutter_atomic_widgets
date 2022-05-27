#include "include/atomic_widget/atomic_widget_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "atomic_widget_plugin.h"

void AtomicWidgetPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  atomic_widget::AtomicWidgetPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
