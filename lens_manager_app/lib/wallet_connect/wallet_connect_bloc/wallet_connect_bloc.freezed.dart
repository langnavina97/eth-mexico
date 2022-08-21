// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_connect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletConnectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectEventCopyWith<$Res> {
  factory $WalletConnectEventCopyWith(
          WalletConnectEvent value, $Res Function(WalletConnectEvent) then) =
      _$WalletConnectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletConnectEventCopyWithImpl<$Res>
    implements $WalletConnectEventCopyWith<$Res> {
  _$WalletConnectEventCopyWithImpl(this._value, this._then);

  final WalletConnectEvent _value;
  // ignore: unused_field
  final $Res Function(WalletConnectEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  $Res call({int? chainId});
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, (v) => _then(v as _$_Initialize));

  @override
  _$_Initialize get _value => super._value as _$_Initialize;

  @override
  $Res call({
    Object? chainId = freezed,
  }) {
    return _then(_$_Initialize(
      chainId: chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({this.chainId});

  @override
  final int? chainId;

  @override
  String toString() {
    return 'WalletConnectEvent.initialize(chainId: $chainId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            const DeepCollectionEquality().equals(other.chainId, chainId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chainId));

  @JsonKey(ignore: true)
  @override
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return initialize(chainId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return initialize?.call(chainId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(chainId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements WalletConnectEvent {
  const factory _Initialize({final int? chainId}) = _$_Initialize;

  int? get chainId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateSessionCopyWith<$Res> {
  factory _$$_CreateSessionCopyWith(
          _$_CreateSession value, $Res Function(_$_CreateSession) then) =
      __$$_CreateSessionCopyWithImpl<$Res>;
  $Res call({int? chainId, OnDisplayUriCallback? onDisplayUri});
}

/// @nodoc
class __$$_CreateSessionCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_CreateSessionCopyWith<$Res> {
  __$$_CreateSessionCopyWithImpl(
      _$_CreateSession _value, $Res Function(_$_CreateSession) _then)
      : super(_value, (v) => _then(v as _$_CreateSession));

  @override
  _$_CreateSession get _value => super._value as _$_CreateSession;

  @override
  $Res call({
    Object? chainId = freezed,
    Object? onDisplayUri = freezed,
  }) {
    return _then(_$_CreateSession(
      chainId: chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int?,
      onDisplayUri: onDisplayUri == freezed
          ? _value.onDisplayUri
          : onDisplayUri // ignore: cast_nullable_to_non_nullable
              as OnDisplayUriCallback?,
    ));
  }
}

/// @nodoc

class _$_CreateSession implements _CreateSession {
  const _$_CreateSession({this.chainId, this.onDisplayUri});

  @override
  final int? chainId;
  @override
  final OnDisplayUriCallback? onDisplayUri;

  @override
  String toString() {
    return 'WalletConnectEvent.createSession(chainId: $chainId, onDisplayUri: $onDisplayUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSession &&
            const DeepCollectionEquality().equals(other.chainId, chainId) &&
            (identical(other.onDisplayUri, onDisplayUri) ||
                other.onDisplayUri == onDisplayUri));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chainId), onDisplayUri);

  @JsonKey(ignore: true)
  @override
  _$$_CreateSessionCopyWith<_$_CreateSession> get copyWith =>
      __$$_CreateSessionCopyWithImpl<_$_CreateSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return createSession(chainId, onDisplayUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return createSession?.call(chainId, onDisplayUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (createSession != null) {
      return createSession(chainId, onDisplayUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return createSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return createSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (createSession != null) {
      return createSession(this);
    }
    return orElse();
  }
}

abstract class _CreateSession implements WalletConnectEvent {
  const factory _CreateSession(
      {final int? chainId,
      final OnDisplayUriCallback? onDisplayUri}) = _$_CreateSession;

  int? get chainId => throw _privateConstructorUsedError;
  OnDisplayUriCallback? get onDisplayUri => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CreateSessionCopyWith<_$_CreateSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatedSessionCopyWith<$Res> {
  factory _$$_CreatedSessionCopyWith(
          _$_CreatedSession value, $Res Function(_$_CreatedSession) then) =
      __$$_CreatedSessionCopyWithImpl<$Res>;
  $Res call({SessionStatus sessionStatus});
}

/// @nodoc
class __$$_CreatedSessionCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_CreatedSessionCopyWith<$Res> {
  __$$_CreatedSessionCopyWithImpl(
      _$_CreatedSession _value, $Res Function(_$_CreatedSession) _then)
      : super(_value, (v) => _then(v as _$_CreatedSession));

  @override
  _$_CreatedSession get _value => super._value as _$_CreatedSession;

  @override
  $Res call({
    Object? sessionStatus = freezed,
  }) {
    return _then(_$_CreatedSession(
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
    ));
  }
}

/// @nodoc

class _$_CreatedSession implements _CreatedSession {
  const _$_CreatedSession({required this.sessionStatus});

  @override
  final SessionStatus sessionStatus;

  @override
  String toString() {
    return 'WalletConnectEvent.createdSession(sessionStatus: $sessionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatedSession &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionStatus));

  @JsonKey(ignore: true)
  @override
  _$$_CreatedSessionCopyWith<_$_CreatedSession> get copyWith =>
      __$$_CreatedSessionCopyWithImpl<_$_CreatedSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return createdSession(sessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return createdSession?.call(sessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (createdSession != null) {
      return createdSession(sessionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return createdSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return createdSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (createdSession != null) {
      return createdSession(this);
    }
    return orElse();
  }
}

abstract class _CreatedSession implements WalletConnectEvent {
  const factory _CreatedSession({required final SessionStatus sessionStatus}) =
      _$_CreatedSession;

  SessionStatus get sessionStatus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CreatedSessionCopyWith<_$_CreatedSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectWalletCopyWith<$Res> {
  factory _$$_SelectWalletCopyWith(
          _$_SelectWallet value, $Res Function(_$_SelectWallet) then) =
      __$$_SelectWalletCopyWithImpl<$Res>;
  $Res call({String walletAddress});
}

/// @nodoc
class __$$_SelectWalletCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_SelectWalletCopyWith<$Res> {
  __$$_SelectWalletCopyWithImpl(
      _$_SelectWallet _value, $Res Function(_$_SelectWallet) _then)
      : super(_value, (v) => _then(v as _$_SelectWallet));

  @override
  _$_SelectWallet get _value => super._value as _$_SelectWallet;

  @override
  $Res call({
    Object? walletAddress = freezed,
  }) {
    return _then(_$_SelectWallet(
      walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectWallet implements _SelectWallet {
  const _$_SelectWallet(this.walletAddress);

  @override
  final String walletAddress;

  @override
  String toString() {
    return 'WalletConnectEvent.selectWallet(walletAddress: $walletAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectWallet &&
            const DeepCollectionEquality()
                .equals(other.walletAddress, walletAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletAddress));

  @JsonKey(ignore: true)
  @override
  _$$_SelectWalletCopyWith<_$_SelectWallet> get copyWith =>
      __$$_SelectWalletCopyWithImpl<_$_SelectWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return selectWallet(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return selectWallet?.call(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (selectWallet != null) {
      return selectWallet(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return selectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return selectWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (selectWallet != null) {
      return selectWallet(this);
    }
    return orElse();
  }
}

abstract class _SelectWallet implements WalletConnectEvent {
  const factory _SelectWallet(final String walletAddress) = _$_SelectWallet;

  String get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SelectWalletCopyWith<_$_SelectWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
  $Res call({SessionStatus status});
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, (v) => _then(v as _$_Connected));

  @override
  _$_Connected get _value => super._value as _$_Connected;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_Connected(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.status);

  @override
  final SessionStatus status;

  @override
  String toString() {
    return 'WalletConnectEvent.connected(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connected &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      __$$_ConnectedCopyWithImpl<_$_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return connected(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return connected?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements WalletConnectEvent {
  const factory _Connected(final SessionStatus status) = _$_Connected;

  SessionStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SessionUpdateCopyWith<$Res> {
  factory _$$_SessionUpdateCopyWith(
          _$_SessionUpdate value, $Res Function(_$_SessionUpdate) then) =
      __$$_SessionUpdateCopyWithImpl<$Res>;
  $Res call({WCSessionUpdateResponse updateResponse});
}

/// @nodoc
class __$$_SessionUpdateCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_SessionUpdateCopyWith<$Res> {
  __$$_SessionUpdateCopyWithImpl(
      _$_SessionUpdate _value, $Res Function(_$_SessionUpdate) _then)
      : super(_value, (v) => _then(v as _$_SessionUpdate));

  @override
  _$_SessionUpdate get _value => super._value as _$_SessionUpdate;

  @override
  $Res call({
    Object? updateResponse = freezed,
  }) {
    return _then(_$_SessionUpdate(
      updateResponse == freezed
          ? _value.updateResponse
          : updateResponse // ignore: cast_nullable_to_non_nullable
              as WCSessionUpdateResponse,
    ));
  }
}

/// @nodoc

class _$_SessionUpdate implements _SessionUpdate {
  const _$_SessionUpdate(this.updateResponse);

  @override
  final WCSessionUpdateResponse updateResponse;

  @override
  String toString() {
    return 'WalletConnectEvent.sessionUpdate(updateResponse: $updateResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionUpdate &&
            const DeepCollectionEquality()
                .equals(other.updateResponse, updateResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updateResponse));

  @JsonKey(ignore: true)
  @override
  _$$_SessionUpdateCopyWith<_$_SessionUpdate> get copyWith =>
      __$$_SessionUpdateCopyWithImpl<_$_SessionUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return sessionUpdate(updateResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return sessionUpdate?.call(updateResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (sessionUpdate != null) {
      return sessionUpdate(updateResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return sessionUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return sessionUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (sessionUpdate != null) {
      return sessionUpdate(this);
    }
    return orElse();
  }
}

abstract class _SessionUpdate implements WalletConnectEvent {
  const factory _SessionUpdate(final WCSessionUpdateResponse updateResponse) =
      _$_SessionUpdate;

  WCSessionUpdateResponse get updateResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SessionUpdateCopyWith<_$_SessionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$WalletConnectEventCopyWithImpl<$Res>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, (v) => _then(v as _$_Disconnected));

  @override
  _$_Disconnected get _value => super._value as _$_Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'WalletConnectEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? chainId) initialize,
    required TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)
        createSession,
    required TResult Function(SessionStatus sessionStatus) createdSession,
    required TResult Function(String walletAddress) selectWallet,
    required TResult Function(SessionStatus status) connected,
    required TResult Function(WCSessionUpdateResponse updateResponse)
        sessionUpdate,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? chainId)? initialize,
    TResult Function(int? chainId, OnDisplayUriCallback? onDisplayUri)?
        createSession,
    TResult Function(SessionStatus sessionStatus)? createdSession,
    TResult Function(String walletAddress)? selectWallet,
    TResult Function(SessionStatus status)? connected,
    TResult Function(WCSessionUpdateResponse updateResponse)? sessionUpdate,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CreateSession value) createSession,
    required TResult Function(_CreatedSession value) createdSession,
    required TResult Function(_SelectWallet value) selectWallet,
    required TResult Function(_Connected value) connected,
    required TResult Function(_SessionUpdate value) sessionUpdate,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CreateSession value)? createSession,
    TResult Function(_CreatedSession value)? createdSession,
    TResult Function(_SelectWallet value)? selectWallet,
    TResult Function(_Connected value)? connected,
    TResult Function(_SessionUpdate value)? sessionUpdate,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements WalletConnectEvent {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
mixin _$WalletConnectState {
  bool get initialized => throw _privateConstructorUsedError;
  bool get connected => throw _privateConstructorUsedError;
  int get chainID =>
      throw _privateConstructorUsedError; //Non null when initialized
  WalletConnect? get connector =>
      throw _privateConstructorUsedError; //Non null when connected
  SessionStatus? get sessionStatus =>
      throw _privateConstructorUsedError; //Non null when connected
  EthereumWalletConnectProvider? get ethProvider =>
      throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;
  String? get selectedWalletAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletConnectStateCopyWith<WalletConnectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectStateCopyWith<$Res> {
  factory $WalletConnectStateCopyWith(
          WalletConnectState value, $Res Function(WalletConnectState) then) =
      _$WalletConnectStateCopyWithImpl<$Res>;
  $Res call(
      {bool initialized,
      bool connected,
      int chainID,
      WalletConnect? connector,
      SessionStatus? sessionStatus,
      EthereumWalletConnectProvider? ethProvider,
      String? failure,
      String? selectedWalletAddress});
}

/// @nodoc
class _$WalletConnectStateCopyWithImpl<$Res>
    implements $WalletConnectStateCopyWith<$Res> {
  _$WalletConnectStateCopyWithImpl(this._value, this._then);

  final WalletConnectState _value;
  // ignore: unused_field
  final $Res Function(WalletConnectState) _then;

  @override
  $Res call({
    Object? initialized = freezed,
    Object? connected = freezed,
    Object? chainID = freezed,
    Object? connector = freezed,
    Object? sessionStatus = freezed,
    Object? ethProvider = freezed,
    Object? failure = freezed,
    Object? selectedWalletAddress = freezed,
  }) {
    return _then(_value.copyWith(
      initialized: initialized == freezed
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      chainID: chainID == freezed
          ? _value.chainID
          : chainID // ignore: cast_nullable_to_non_nullable
              as int,
      connector: connector == freezed
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as WalletConnect?,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus?,
      ethProvider: ethProvider == freezed
          ? _value.ethProvider
          : ethProvider // ignore: cast_nullable_to_non_nullable
              as EthereumWalletConnectProvider?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedWalletAddress: selectedWalletAddress == freezed
          ? _value.selectedWalletAddress
          : selectedWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WalletConnectStateCopyWith<$Res>
    implements $WalletConnectStateCopyWith<$Res> {
  factory _$$_WalletConnectStateCopyWith(_$_WalletConnectState value,
          $Res Function(_$_WalletConnectState) then) =
      __$$_WalletConnectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool initialized,
      bool connected,
      int chainID,
      WalletConnect? connector,
      SessionStatus? sessionStatus,
      EthereumWalletConnectProvider? ethProvider,
      String? failure,
      String? selectedWalletAddress});
}

/// @nodoc
class __$$_WalletConnectStateCopyWithImpl<$Res>
    extends _$WalletConnectStateCopyWithImpl<$Res>
    implements _$$_WalletConnectStateCopyWith<$Res> {
  __$$_WalletConnectStateCopyWithImpl(
      _$_WalletConnectState _value, $Res Function(_$_WalletConnectState) _then)
      : super(_value, (v) => _then(v as _$_WalletConnectState));

  @override
  _$_WalletConnectState get _value => super._value as _$_WalletConnectState;

  @override
  $Res call({
    Object? initialized = freezed,
    Object? connected = freezed,
    Object? chainID = freezed,
    Object? connector = freezed,
    Object? sessionStatus = freezed,
    Object? ethProvider = freezed,
    Object? failure = freezed,
    Object? selectedWalletAddress = freezed,
  }) {
    return _then(_$_WalletConnectState(
      initialized: initialized == freezed
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      chainID: chainID == freezed
          ? _value.chainID
          : chainID // ignore: cast_nullable_to_non_nullable
              as int,
      connector: connector == freezed
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as WalletConnect?,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus?,
      ethProvider: ethProvider == freezed
          ? _value.ethProvider
          : ethProvider // ignore: cast_nullable_to_non_nullable
              as EthereumWalletConnectProvider?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedWalletAddress: selectedWalletAddress == freezed
          ? _value.selectedWalletAddress
          : selectedWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WalletConnectState implements _WalletConnectState {
  const _$_WalletConnectState(
      {required this.initialized,
      required this.connected,
      required this.chainID,
      this.connector,
      this.sessionStatus,
      this.ethProvider,
      this.failure,
      this.selectedWalletAddress});

  @override
  final bool initialized;
  @override
  final bool connected;
  @override
  final int chainID;
//Non null when initialized
  @override
  final WalletConnect? connector;
//Non null when connected
  @override
  final SessionStatus? sessionStatus;
//Non null when connected
  @override
  final EthereumWalletConnectProvider? ethProvider;
  @override
  final String? failure;
  @override
  final String? selectedWalletAddress;

  @override
  String toString() {
    return 'WalletConnectState(initialized: $initialized, connected: $connected, chainID: $chainID, connector: $connector, sessionStatus: $sessionStatus, ethProvider: $ethProvider, failure: $failure, selectedWalletAddress: $selectedWalletAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletConnectState &&
            const DeepCollectionEquality()
                .equals(other.initialized, initialized) &&
            const DeepCollectionEquality().equals(other.connected, connected) &&
            const DeepCollectionEquality().equals(other.chainID, chainID) &&
            const DeepCollectionEquality().equals(other.connector, connector) &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus) &&
            const DeepCollectionEquality()
                .equals(other.ethProvider, ethProvider) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality()
                .equals(other.selectedWalletAddress, selectedWalletAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialized),
      const DeepCollectionEquality().hash(connected),
      const DeepCollectionEquality().hash(chainID),
      const DeepCollectionEquality().hash(connector),
      const DeepCollectionEquality().hash(sessionStatus),
      const DeepCollectionEquality().hash(ethProvider),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(selectedWalletAddress));

  @JsonKey(ignore: true)
  @override
  _$$_WalletConnectStateCopyWith<_$_WalletConnectState> get copyWith =>
      __$$_WalletConnectStateCopyWithImpl<_$_WalletConnectState>(
          this, _$identity);
}

abstract class _WalletConnectState implements WalletConnectState {
  const factory _WalletConnectState(
      {required final bool initialized,
      required final bool connected,
      required final int chainID,
      final WalletConnect? connector,
      final SessionStatus? sessionStatus,
      final EthereumWalletConnectProvider? ethProvider,
      final String? failure,
      final String? selectedWalletAddress}) = _$_WalletConnectState;

  @override
  bool get initialized => throw _privateConstructorUsedError;
  @override
  bool get connected => throw _privateConstructorUsedError;
  @override
  int get chainID => throw _privateConstructorUsedError;
  @override //Non null when initialized
  WalletConnect? get connector => throw _privateConstructorUsedError;
  @override //Non null when connected
  SessionStatus? get sessionStatus => throw _privateConstructorUsedError;
  @override //Non null when connected
  EthereumWalletConnectProvider? get ethProvider =>
      throw _privateConstructorUsedError;
  @override
  String? get failure => throw _privateConstructorUsedError;
  @override
  String? get selectedWalletAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WalletConnectStateCopyWith<_$_WalletConnectState> get copyWith =>
      throw _privateConstructorUsedError;
}
