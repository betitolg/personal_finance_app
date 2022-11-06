class AccountModel {
  final String? id;
  final String? name;
  final bool? status;
  final double? amount;

  AccountModel({this.id, this.name, this.status, this.amount});
}

List<AccountModel> accountList = [
  AccountModel(
    id: '1',
    name: 'Cash',
    status: true,
    amount: 1000.0,
  ),
  AccountModel(
    id: '2',
    name: 'Bank',
    status: true,
    amount: 2000.0,
  ),
  AccountModel(
    id: '3',
    name: 'Credit Card',
    status: true,
    amount: 3000.0,
  ),
  AccountModel(
    id: '3',
    name: 'PayPal',
    status: true,
    amount: 3000.0,
  ),
];
