import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer' as developer;

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    developer
        .log('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}
