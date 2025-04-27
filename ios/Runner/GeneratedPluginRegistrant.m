//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<animated_rating_stars/AnimatedRatingStarsPlugin.h>)
#import <animated_rating_stars/AnimatedRatingStarsPlugin.h>
#else
@import animated_rating_stars;
#endif

#if __has_include(<path_provider_foundation/PathProviderPlugin.h>)
#import <path_provider_foundation/PathProviderPlugin.h>
#else
@import path_provider_foundation;
#endif

#if __has_include(<r_get_ip/RGetIpPlugin.h>)
#import <r_get_ip/RGetIpPlugin.h>
#else
@import r_get_ip;
#endif

#if __has_include(<sqflite/SqflitePlugin.h>)
#import <sqflite/SqflitePlugin.h>
#else
@import sqflite;
#endif

#if __has_include(<url_launcher_ios/URLLauncherPlugin.h>)
#import <url_launcher_ios/URLLauncherPlugin.h>
#else
@import url_launcher_ios;
#endif

#if __has_include(<wireguard_flutter/WireguardFlutterPlugin.h>)
#import <wireguard_flutter/WireguardFlutterPlugin.h>
#else
@import wireguard_flutter;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AnimatedRatingStarsPlugin registerWithRegistrar:[registry registrarForPlugin:@"AnimatedRatingStarsPlugin"]];
  [PathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"PathProviderPlugin"]];
  [RGetIpPlugin registerWithRegistrar:[registry registrarForPlugin:@"RGetIpPlugin"]];
  [SqflitePlugin registerWithRegistrar:[registry registrarForPlugin:@"SqflitePlugin"]];
  [URLLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"URLLauncherPlugin"]];
  [WireguardFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"WireguardFlutterPlugin"]];
}

@end
