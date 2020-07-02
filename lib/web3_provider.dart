import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:web3dart/web3dart.dart';
import 'package:path/path.dart' show join, dirname;
import 'package:web_socket_channel/io.dart';

const String rpcUrl = 'http://localhost:7545';
const String wsUrl = 'ws://localhost:7545';

const String privateKey =
    '85d2242a------d73c7de266b72a25a';

final EthereumAddress contractAddr =
EthereumAddress.fromHex('0xf451659CF5688e31a31fC3316efbcC2339A490Fb');
final EthereumAddress receiver =
EthereumAddress.fromHex('0x6c87E1a114C3379BEc929f6356c5263d62542C13');

final File abiFile = File(join(dirname(Platform.script.path), 'abi.json'));


const apiUrl = "http://localhost:7545"; //Replace with your API

const httpClient = new Client();
const ethClient = new Web3Client(apiUrl, httpClient);

//Q1 - Should I create all those as variables or as const ?
const privateKeyRinkeby = '6A3B------D969CCC66339';
const pubKeyRinkeby = '0x2A6990bD706B574d35202c55812a6a17f36dE500';
const infuraRinkeby = 'rinkeby.infura.io/v3/1fc5af390b99412f864b52fd4ca975ea';
const infuraProjectID = '1fc5af390b99412f864b52fd4ca975ea';
const infuraProjectSecret = 'f------2474cfa';
const goerliContractAddress = '0x0008311E17b422f07CAFa47a7654F1cE9803171F';
const pubkeyGoerli = '0x134BF142f525F3383c4770f2e95EeF74307aBb24';
const pvtekeyGoerli = '90-------4F50CBE86E60F01';
const infuraGoerli = 'goerli.infura.io/v3/1fc5af390b99412f864b52fd4ca975ea';

//Q2 - Based on the documentation of web3 dart package, I'm unable to replicate
//the credentials. Can you give me a hand on lines 42-45 ?
Credentials.fromHex = EthPrivateKey.fromHex(privateKeyRinkeby);
var address = credentials.extractAddress();
print(address.hex);

//Q3 - once I deploy my contract, and get an abi.json should I create a file called
// ProjectNameAbi.json or just abi.json is the standard ?
//How do I call that contract on my application?



var credentials = ethClient.credentialsFromPrivateKey(pvtekeyGoerli);
var address =

// You can now call rpc methods. This one will query the amount of Ether you own
EtherAmount balance = ethClient.getBalance(credentials.address);
print(balance.getValueInUnit(EtherUnit.ether));



var web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");