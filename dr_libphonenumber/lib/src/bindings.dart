// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Dart bindings to call DrLibphonenumber functions
class DrLibphonenumberBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DrLibphonenumberBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DrLibphonenumberBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Format the [phone_number] using the [phone_number_format].
  ffi.Pointer<ffi.Int8> format(
    ffi.Pointer<ffi.Int8> phoneNumber,
    ffi.Pointer<ffi.Int8> isoCode,
    int phoneNumberFormat,
  ) {
    return _format(
      phoneNumber,
      isoCode,
      phoneNumberFormat,
    );
  }

  late final _format_ptr = _lookup<ffi.NativeFunction<_c_format>>('format');
  late final _dart_format _format = _format_ptr.asFunction<_dart_format>();

  int getNumberType(
    ffi.Pointer<ffi.Int8> phoneNumber,
    ffi.Pointer<ffi.Int8> isoCode,
  ) {
    return _getNumberType(
      phoneNumber,
      isoCode,
    );
  }

  late final _getNumberType_ptr =
      _lookup<ffi.NativeFunction<_c_getNumberType>>('getNumberType');
  late final _dart_getNumberType _getNumberType =
      _getNumberType_ptr.asFunction<_dart_getNumberType>();

  ffi.Pointer<ffi.Int8> getRegionCodeForCountryCode(
    int callingCode,
  ) {
    return _getRegionCodeForCountryCode(
      callingCode,
    );
  }

  late final _getRegionCodeForCountryCode_ptr =
      _lookup<ffi.NativeFunction<_c_getRegionCodeForCountryCode>>(
          'getRegionCodeForCountryCode');
  late final _dart_getRegionCodeForCountryCode _getRegionCodeForCountryCode =
      _getRegionCodeForCountryCode_ptr
          .asFunction<_dart_getRegionCodeForCountryCode>();

  ffi.Pointer<RegionInfo> getRegionInfo(
    ffi.Pointer<ffi.Int8> phoneNumber,
    ffi.Pointer<ffi.Int8> isoCode,
  ) {
    return _getRegionInfo(
      phoneNumber,
      isoCode,
    );
  }

  late final _getRegionInfo_ptr =
      _lookup<ffi.NativeFunction<_c_getRegionInfo>>('getRegionInfo');
  late final _dart_getRegionInfo _getRegionInfo =
      _getRegionInfo_ptr.asFunction<_dart_getRegionInfo>();

  int isValidPhoneNumber(
    ffi.Pointer<ffi.Int8> phoneNumber,
    ffi.Pointer<ffi.Int8> isoCode,
  ) {
    return _isValidPhoneNumber(
      phoneNumber,
      isoCode,
    );
  }

  late final _isValidPhoneNumber_ptr =
      _lookup<ffi.NativeFunction<_c_isValidPhoneNumber>>('isValidPhoneNumber');
  late final _dart_isValidPhoneNumber _isValidPhoneNumber =
      _isValidPhoneNumber_ptr.asFunction<_dart_isValidPhoneNumber>();

  void freeCChar(
    ffi.Pointer<ffi.Int8> str,
  ) {
    return _freeCChar(
      str,
    );
  }

  late final _freeCChar_ptr =
      _lookup<ffi.NativeFunction<_c_freeCChar>>('freeCChar');
  late final _dart_freeCChar _freeCChar =
      _freeCChar_ptr.asFunction<_dart_freeCChar>();

  void freeRegionInfo(
    ffi.Pointer<RegionInfo> unsafeStruct,
  ) {
    return _freeRegionInfo(
      unsafeStruct,
    );
  }

  late final _freeRegionInfo_ptr =
      _lookup<ffi.NativeFunction<_c_freeRegionInfo>>('freeRegionInfo');
  late final _dart_freeRegionInfo _freeRegionInfo =
      _freeRegionInfo_ptr.asFunction<_dart_freeRegionInfo>();
}

class __darwin_pthread_handler_rec extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<_typedefC_1>> __routine;

  external ffi.Pointer<ffi.Void> __arg;

  external ffi.Pointer<__darwin_pthread_handler_rec> __next;
}

class _opaque_pthread_attr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([56])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_cond_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([40])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_condattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_mutex_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([56])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_mutexattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_once_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_rwlock_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([192])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_rwlockattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Array.multi([16])
  external ffi.Array<ffi.Int8> __opaque;
}

class _opaque_pthread_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  external ffi.Pointer<__darwin_pthread_handler_rec> __cleanup_stack;

  @ffi.Array.multi([8176])
  external ffi.Array<ffi.Int8> __opaque;
}

abstract class PhoneNumberFormat {
  /// E.164 formatting, no spaces, no decorations.
  static const int E164 = 0;

  /// International formatting, contains country code and country dependent
  /// formatting.
  static const int International = 1;

  /// National formatting, no country code and country dependent formatting.
  static const int National = 2;

  /// RFC3966 formatting, see the RFC.
  static const int Rfc3966 = 3;
}

abstract class PhoneNumberType {
  ///
  static const int FixedLine = 0;

  ///
  static const int Mobile = 1;

  /// In some regions (e.g. the USA), it is impossible to distinguish between
  /// fixed-line and mobile numbers by looking at the phone number itself.
  static const int FixedLineOrMobile = 2;

  /// Freephone lines.
  static const int TollFree = 3;

  ///
  static const int PremiumRate = 4;

  /// The cost of this call is shared between the caller and the recipient, and
  /// is hence typically less than PREMIUM_RATE calls. See
  /// http://en.wikipedia.org/wiki/Shared_Cost_Service for more information.
  static const int SharedCost = 5;

  /// A personal number is associated with a particular person, and may be
  /// routed to either a MOBILE or FIXED_LINE number. Some more information can
  /// be found here: http://en.wikipedia.org/wiki/Personal_Numbers
  static const int PersonalNumber = 6;

  /// Voice over IP numbers. This includes TSoIP (Telephony Service over IP).
  static const int Voip = 7;

  ///
  static const int Pager = 8;

  /// Used for "Universal Access Numbers" or "Company Numbers". They may be
  /// further routed to specific offices, but allow one number to be used for a
  /// company.
  static const int Uan = 9;

  ///
  static const int Emergency = 10;

  /// Used for "Voice Mail Access Numbers".
  static const int Voicemail = 11;

  ///
  static const int ShortCode = 12;

  ///
  static const int StandardRate = 13;

  ///
  static const int Carrier = 14;

  ///
  static const int NoInternational = 15;

  /// A phone number is of type UNKNOWN when it does not fit any of the known
  /// patterns for a specific region.
  static const int Unknown = 16;
}

/// Check https://countrycode.org/ for detail.
class RegionInfo extends ffi.Struct {
  /// The region code or calling code.
  @ffi.Uint16()
  external int regionCode;

  /// The phone number excluding the [region_code].
  @ffi.Uint64()
  external int phoneNumberValue;

  /// The country code.
  external ffi.Pointer<ffi.Int8> countryCode;

  /// The formatted phone number with combination of [region_code] & [phone_number_value].
  external ffi.Pointer<ffi.Int8> formattedNumber;
}

const int __WORDSIZE = 64;

const int __DARWIN_ONLY_64_BIT_INO_T = 0;

const int __DARWIN_ONLY_UNIX_CONFORMANCE = 1;

const int __DARWIN_ONLY_VERS_1050 = 0;

const int __DARWIN_UNIX03 = 1;

const int __DARWIN_64_BIT_INO_T = 1;

const int __DARWIN_VERS_1050 = 1;

const int __DARWIN_NON_CANCELABLE = 0;

const String __DARWIN_SUF_64_BIT_INO_T = '\$INODE64';

const String __DARWIN_SUF_1050 = '\$1050';

const String __DARWIN_SUF_EXTSN = '\$DARWIN_EXTSN';

const int __DARWIN_C_ANSI = 4096;

const int __DARWIN_C_FULL = 900000;

const int __DARWIN_C_LEVEL = 900000;

const int __STDC_WANT_LIB_EXT1__ = 1;

const int __DARWIN_NO_LONG_LONG = 0;

const int _DARWIN_FEATURE_64_BIT_INODE = 1;

const int _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;

const int _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;

const int __DARWIN_NULL = 0;

const int __PTHREAD_SIZE__ = 8176;

const int __PTHREAD_ATTR_SIZE__ = 56;

const int __PTHREAD_MUTEXATTR_SIZE__ = 8;

const int __PTHREAD_MUTEX_SIZE__ = 56;

const int __PTHREAD_CONDATTR_SIZE__ = 8;

const int __PTHREAD_COND_SIZE__ = 40;

const int __PTHREAD_ONCE_SIZE__ = 8;

const int __PTHREAD_RWLOCK_SIZE__ = 192;

const int __PTHREAD_RWLOCKATTR_SIZE__ = 16;

const int USER_ADDR_NULL = 0;

const int INT8_MAX = 127;

const int INT16_MAX = 32767;

const int INT32_MAX = 2147483647;

const int INT64_MAX = 9223372036854775807;

const int INT8_MIN = -128;

const int INT16_MIN = -32768;

const int INT32_MIN = -2147483648;

const int INT64_MIN = -9223372036854775808;

const int UINT8_MAX = 255;

const int UINT16_MAX = 65535;

const int UINT32_MAX = 4294967295;

const int UINT64_MAX = -1;

const int INT_LEAST8_MIN = -128;

const int INT_LEAST16_MIN = -32768;

const int INT_LEAST32_MIN = -2147483648;

const int INT_LEAST64_MIN = -9223372036854775808;

const int INT_LEAST8_MAX = 127;

const int INT_LEAST16_MAX = 32767;

const int INT_LEAST32_MAX = 2147483647;

const int INT_LEAST64_MAX = 9223372036854775807;

const int UINT_LEAST8_MAX = 255;

const int UINT_LEAST16_MAX = 65535;

const int UINT_LEAST32_MAX = 4294967295;

const int UINT_LEAST64_MAX = -1;

const int INT_FAST8_MIN = -128;

const int INT_FAST16_MIN = -32768;

const int INT_FAST32_MIN = -2147483648;

const int INT_FAST64_MIN = -9223372036854775808;

const int INT_FAST8_MAX = 127;

const int INT_FAST16_MAX = 32767;

const int INT_FAST32_MAX = 2147483647;

const int INT_FAST64_MAX = 9223372036854775807;

const int UINT_FAST8_MAX = 255;

const int UINT_FAST16_MAX = 65535;

const int UINT_FAST32_MAX = 4294967295;

const int UINT_FAST64_MAX = -1;

const int INTPTR_MAX = 9223372036854775807;

const int INTPTR_MIN = -9223372036854775808;

const int UINTPTR_MAX = -1;

const int INTMAX_MAX = 9223372036854775807;

const int UINTMAX_MAX = -1;

const int INTMAX_MIN = -9223372036854775808;

const int PTRDIFF_MIN = -9223372036854775808;

const int PTRDIFF_MAX = 9223372036854775807;

const int SIZE_MAX = -1;

const int RSIZE_MAX = 9223372036854775807;

const int WCHAR_MAX = 2147483647;

const int WCHAR_MIN = -2147483648;

const int WINT_MIN = -2147483648;

const int WINT_MAX = 2147483647;

const int SIG_ATOMIC_MIN = -2147483648;

const int SIG_ATOMIC_MAX = 2147483647;

typedef _c_format = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
  ffi.Int32 phoneNumberFormat,
);

typedef _dart_format = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
  int phoneNumberFormat,
);

typedef _c_getNumberType = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _dart_getNumberType = int Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _c_getRegionCodeForCountryCode = ffi.Pointer<ffi.Int8> Function(
  ffi.Uint16 callingCode,
);

typedef _dart_getRegionCodeForCountryCode = ffi.Pointer<ffi.Int8> Function(
  int callingCode,
);

typedef _c_getRegionInfo = ffi.Pointer<RegionInfo> Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _dart_getRegionInfo = ffi.Pointer<RegionInfo> Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _c_isValidPhoneNumber = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _dart_isValidPhoneNumber = int Function(
  ffi.Pointer<ffi.Int8> phoneNumber,
  ffi.Pointer<ffi.Int8> isoCode,
);

typedef _c_freeCChar = ffi.Void Function(
  ffi.Pointer<ffi.Int8> str,
);

typedef _dart_freeCChar = void Function(
  ffi.Pointer<ffi.Int8> str,
);

typedef _c_freeRegionInfo = ffi.Void Function(
  ffi.Pointer<RegionInfo> unsafeStruct,
);

typedef _dart_freeRegionInfo = void Function(
  ffi.Pointer<RegionInfo> unsafeStruct,
);

typedef _typedefC_1 = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);