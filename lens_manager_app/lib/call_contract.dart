// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:http/http.dart';
// import 'package:web3dart/web3dart.dart';

// class CallContract extends StatefulWidget {
//   CallContract(this.title) : super();
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<CallContract> {
//   Client? httpClient;
//   Web3Client? ethereumClient;
//   TextEditingController controller = TextEditingController();

//   String address = '0x26b9497F5E52FeacDf735d11656c9885eD483A2b';

//   String contractName = "Fluthereum";

//   String contractAddress = "";

//   int balance = 0;
//   bool loading = false;

//   Future<List<dynamic>> query(String functionName, List<dynamic> args) async {
//     DeployedContract contract = await getContract();
//     ContractFunction function = contract.function(functionName);
//     List<dynamic> result = await ethereumClient!
//         .call(contract: contract, function: function, params: args);
//     return result;
//   }

//   Future<String> transaction(String functionName, List<dynamic> args) async {
//     EthPrivateKey credential =
//         EthPrivateKey.fromHex(dotenv.env['PRIVATE_KEY']!);
//     DeployedContract contract = await getContract();
//     ContractFunction function = contract.function(functionName);
//     dynamic result = await ethereumClient!.sendTransaction(
//       credential,
//       Transaction.callContract(
//         contract: contract,
//         function: function,
//         parameters: args,
//       ),
//       fetchChainIdFromNetworkId: true,
//       chainId: null,
//     );

//     return result;
//   }

//   Future<DeployedContract> getContract() async {
//     String abi = await rootBundle.loadString("assets/abi.json");

//     DeployedContract contract = DeployedContract(
//       ContractAbi.fromJson(abi, contractName),
//       EthereumAddress.fromHex(contractAddress),
//     );

//     return contract;
//   }

//   Future<void> getBalance() async {
//     loading = true;
//     setState(() {});
//     List<dynamic> result = await query('balance', []);
//     balance = int.parse(result[0].toString());
//     loading = false;
//     print(balance.toString());
//     setState(() {});
//   }

//   Future<void> deposit(int amount) async {
//     BigInt parsedAmount = BigInt.from(amount);
//     var result = await transaction("deposit", [parsedAmount]);
//     print("deposited");
//     print(result);
//   }

//   Future<void> withdraw(int amount) async {
//     BigInt parsedAmount = BigInt.from(amount);
//     var result = await transaction("withdraw", [parsedAmount]);
//     print("withdraw done");
//     print(result);
//   }

//   @override
//   void initState() {
//     super.initState();
//     httpClient = Client();
//     ethereumClient = Web3Client(dotenv.env['MUMBAI_URL']!, httpClient!);
//     getBalance();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               "Balance",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             loading
//                 ? CircularProgressIndicator()
//                 : Text(
//                     balance.toString(),
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
//                   ),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: TextField(
//                 controller: controller,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(label: Text('amount')),
//               ),
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.blue,
//                   ),
//                   child: TextButton(
//                     onPressed: getBalance,
//                     child: Text("balance"),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.green,
//                   ),
//                   child: IconButton(
//                     onPressed: () => deposit(int.parse(controller.text)),
//                     icon: Icon(Icons.upload),
//                     color: Colors.white,
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.red,
//                   ),
//                   child: IconButton(
//                     onPressed: () => withdraw(int.parse(controller.text)),
//                     icon: Icon(Icons.download),
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
