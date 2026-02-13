import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/view_model/coinlist_viwmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class CoinListScreen extends StatefulWidget {
  const CoinListScreen({super.key});

  @override
  State<CoinListScreen> createState() => _CoinListScreenState();
}

class _CoinListScreenState extends State<CoinListScreen> {
  final _viewModel = GetIt.I.get<CoinlistViwModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => _viewModel,
        child: Consumer<CoinlistViwModel>(
          builder: (context, viewModel, child) {
            return getUI(viewModel);
          },
        ));
  }
}

Widget getUI(CoinlistViwModel viewModel) {
  return Scaffold(
    body: ListView.builder(
      itemCount: viewModel.cryptoList.length ?? 0,
      itemBuilder: (context, index) {
        return Text(viewModel.cryptoList[index].name ?? ' ');
      },
    ),
  );
}
