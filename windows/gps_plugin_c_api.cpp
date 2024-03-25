#include "include/gps/gps_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "gps_plugin.h"

void GpsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  gps::GpsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
