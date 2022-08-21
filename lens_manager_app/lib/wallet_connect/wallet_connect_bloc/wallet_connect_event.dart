part of 'wallet_connect_bloc.dart';

@freezed
class WalletConnectEvent with _$WalletConnectEvent {
  const factory WalletConnectEvent.initialize({int? chainId}) = _Initialize;

  const factory WalletConnectEvent.createSession(
      {int? chainId, OnDisplayUriCallback? onDisplayUri}) = _CreateSession;

  const factory WalletConnectEvent.createdSession(
      {required SessionStatus sessionStatus}) = _CreatedSession;

  const factory WalletConnectEvent.selectWallet(String walletAddress) =
      _SelectWallet;

  // const factory WalletConnectEvent.callContract(
  //   {int? chainId, String? contractID}) = _CreateSession;

  // const factory WalletConnectEvent.approveSession({
  //   required List<String> accounts,
  //   required int chainId,
  // }) = _ApproveSession;
  // const factory WalletConnectEvent.rejectSession({String? message}) =
  //     _RejectSession;
  // const factory WalletConnectEvent.updateSession(SessionStatus sessionStatus) =
  //     _UpdateSession;
  // const factory WalletConnectEvent.approveRequest({
  //   required int id,
  //   required String result,
  // }) = _ApproveRequest;

  // const factory WalletConnectEvent.rejectRequest({
  //   required int id,
  //   String? errorMessage,
  // }) = _RejectRequest;

  // const factory WalletConnectEvent.sendCustomRequest({
  //   int? id,
  //   required String method,
  //   required List<dynamic> params,
  //   String? topic,
  // }) = _SendCustomRequest;

  // const factory WalletConnectEvent.sendCustomResponse({
  //   required int id,
  //   String? result,
  //   String? error,
  // }) = _SendCustomResponse;

  // const factory WalletConnectEvent.killSession({String? sessionError}) =
  //     _KillSession;

  // const factory WalletConnectEvent.close({bool? forceClose}) = _Close;

  // const factory WalletConnectEvent.reconnect() = _Reconnect;

  // const factory WalletConnectEvent.connect(
  //     {int? chainId, OnDisplayUriCallback? onDisplayUri}) = _Connect;

  const factory WalletConnectEvent.connected(SessionStatus status) = _Connected;

  const factory WalletConnectEvent.sessionUpdate(
      WCSessionUpdateResponse updateResponse) = _SessionUpdate;

  const factory WalletConnectEvent.disconnected() = _Disconnected;
}
