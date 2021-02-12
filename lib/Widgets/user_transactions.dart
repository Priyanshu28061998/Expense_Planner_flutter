import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransactions = [
    Transaction(
      't1',
      'new shoes',
      56.33,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'groceries',
      16.33,
      DateTime.now(),
    ),
    Transaction(
      't1',
      'new shoes',
      56.33,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'groceries',
      16.33,
      DateTime.now(),
    ),
    Transaction(
      't1',
      'new shoes',
      56.33,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'groceries',
      16.33,
      DateTime.now(),
    ),
    Transaction(
      't1',
      'new shoes',
      56.33,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'groceries',
      16.33,
      DateTime.now(),
    ),
    Transaction(
      't1',
      'new shoes',
      56.33,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'groceries',
      16.33,
      DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title,double amount){
      final newTx=new Transaction(DateTime.now().toString(),title, amount,DateTime.now(),);
      setState(() {
        _usertransactions.add(newTx);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_usertransactions),
      ],
    );
  }
}