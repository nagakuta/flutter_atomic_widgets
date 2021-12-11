//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <atomic_widget/atomic_widget_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) atomic_widget_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AtomicWidgetPlugin");
  atomic_widget_plugin_register_with_registrar(atomic_widget_registrar);
}
