part of 'wallet_connect_bloc.dart';

@freezed
class WalletConnectState with _$WalletConnectState {
  const factory WalletConnectState(
      {required bool initialized,
      required bool connected,
      required int chainID,
      //Non null when initialized
      WalletConnect? connector,
      //Non null when connected
      SessionStatus? sessionStatus,
      //Non null when connected
      EthereumWalletConnectProvider? ethProvider,
      String? failure,
      String? selectedWalletAddress}) = _WalletConnectState;

  factory WalletConnectState.initial() {
    return WalletConnectState(
        initialized: false, connected: false, chainID: 137);
  }
}

extension WalletConnectStateX on WalletConnectState {
  String get chainName {
    switch (this.chainID) {
      case 137:
        return "Polygon";

      default:
        return "Other";
    }
  }

  String get chainIcon {
    switch (this.chainID) {
      case 137:
        return "Polygon";

      default:
        return "Other";
    }
  }
}
