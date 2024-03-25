#ifndef FLUTTER_PLUGIN_GPS_PLUGIN_H_
#define FLUTTER_PLUGIN_GPS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace gps {

class GpsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GpsPlugin();

  virtual ~GpsPlugin();

  // Disallow copy and assign.
  GpsPlugin(const GpsPlugin&) = delete;
  GpsPlugin& operator=(const GpsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace gps

#endif  // FLUTTER_PLUGIN_GPS_PLUGIN_H_
