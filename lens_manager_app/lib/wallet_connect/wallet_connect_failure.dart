import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_connect_failure.freezed.dart';

@freezed
class WalletConnectFailure with _$WalletConnectFailure {
  const factory WalletConnectFailure.unexpected() = Unexpected;
  const factory WalletConnectFailure.noWalletSelected() = NoWalletSelected;
  const factory WalletConnectFailure.notConnected() = NotConnected;
  const factory WalletConnectFailure.alreadyConnected() = AlreadyConnected;
  const factory WalletConnectFailure.notInitialized() = NotInitialized;
}
