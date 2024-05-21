// =================================================
// Autogenerated from Unify 3.0.0, do not edit directly.
// =================================================

import 'dart:async';
import 'package:flutter/services.dart';
import 'uniapi/uni_callback.dart';
import 'uniapi/uni_callback_manager.dart';
import 'uniapi/caches.dart';
import 'package:flutter/foundation.dart';
import 'uniapi/uni_api.dart';

import 'location_info_model.dart';

/// Call flow direction : dart -> native
class UniCallBackTestService1 {
    static Map<K, dynamic> mapClone<K, V>(Map<K, V> map) {
      Map<K, dynamic> newMap = <K, dynamic>{};

      map.forEach((key, value) {
        newMap[key] = 
          (value is Map ? mapClone(value) : 
          value is List ? listClone(value): 
          value is LocationInfoModel ? value.encode() : 
          value);
      });

      return newMap;
    }
    
    static List<T> listClone<T>(List list) {
      List<T> newList = <T>[];
      for (var value in list) {
        newList.add(
          value is Map ? mapClone(value) :
          value is List ? listClone(value) :
          value is LocationInfoModel ? value.encode() : 
          value);
      }

      return newList;
    }
    

    static Future<void> doCallbackAction0(UniCallback<LocationInfoModel> callback) async  {
        callback.callbackName = 'UniCallBackTestService1_doCallbackAction0_callback_${callback.hashCode}';
        uniCallbackCache['UniCallBackTestService1_doCallbackAction0_callback_${callback.hashCode}'] = callback;
        final Map<String, dynamic> encoded = {};
        encoded["callback"] = 'UniCallBackTestService1_doCallbackAction0_callback_${callback.hashCode}';
        const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?> (
            'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction0', StandardMessageCodec());
        UniCallbackManager.getInstance();
        final Map<Object?, Object?>? replyMap =
            await channel.send(encoded) as Map<Object?, Object?>?;
        if (replyMap == null) {
            UniApi.trackError('UniCallBackTestService1', 'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction0', 'Unable to establish connection on channel : "com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction0" .');
            if (!kReleaseMode) {
                throw PlatformException(
                    code: 'channel-error',
                    message: 'Unable to establish connection on channel : "com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction0" .',
                    details: null,
                );
            }
        } else if (replyMap['error'] != null) {
            final Map<Object?, Object?> error = (replyMap['error']  as Map<Object?, Object?>);
            String errorMsg = '';
            if (error.containsKey('code')) errorMsg += '[ ${error['code']?.toString() ?? ''} ]';
            if (error.containsKey('message')) errorMsg += '[ ${error['message']?.toString() ?? ''} ]';
            if (error.containsKey('details')) errorMsg += '[ ${error['details']?.toString() ?? ''} ]';
            UniApi.trackError('UniCallBackTestService1', 'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction0', 'doCallbackAction0: $errorMsg);');
            if (!kReleaseMode) {
                throw PlatformException(
                    code: error['code'] as String,
                    message: error['message'] as String,
                    details: error['details'],
                );
            }
        } else {
            // noop;
        }
    }

    static Future<void> doCallbackAction1(UniCallback<String> callback) async  {
        callback.callbackName = 'UniCallBackTestService1_doCallbackAction1_callback_${callback.hashCode}';
        uniCallbackCache['UniCallBackTestService1_doCallbackAction1_callback_${callback.hashCode}'] = callback;
        final Map<String, dynamic> encoded = {};
        encoded["callback"] = 'UniCallBackTestService1_doCallbackAction1_callback_${callback.hashCode}';
        const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?> (
            'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction1', StandardMessageCodec());
        UniCallbackManager.getInstance();
        final Map<Object?, Object?>? replyMap =
            await channel.send(encoded) as Map<Object?, Object?>?;
        if (replyMap == null) {
            UniApi.trackError('UniCallBackTestService1', 'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction1', 'Unable to establish connection on channel : "com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction1" .');
            if (!kReleaseMode) {
                throw PlatformException(
                    code: 'channel-error',
                    message: 'Unable to establish connection on channel : "com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction1" .',
                    details: null,
                );
            }
        } else if (replyMap['error'] != null) {
            final Map<Object?, Object?> error = (replyMap['error']  as Map<Object?, Object?>);
            String errorMsg = '';
            if (error.containsKey('code')) errorMsg += '[ ${error['code']?.toString() ?? ''} ]';
            if (error.containsKey('message')) errorMsg += '[ ${error['message']?.toString() ?? ''} ]';
            if (error.containsKey('details')) errorMsg += '[ ${error['details']?.toString() ?? ''} ]';
            UniApi.trackError('UniCallBackTestService1', 'com.didi.flutter.uni_api.UniCallBackTestService1.doCallbackAction1', 'doCallbackAction1: $errorMsg);');
            if (!kReleaseMode) {
                throw PlatformException(
                    code: error['code'] as String,
                    message: error['message'] as String,
                    details: error['details'],
                );
            }
        } else {
            // noop;
        }
    }

}
