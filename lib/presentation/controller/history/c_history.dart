import 'package:financial_control/data/model/history.dart';
import 'package:financial_control/data/source/source_history.dart';
import 'package:get/get.dart';

class CHistory extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _list = <History>[].obs;
  List<History> get list => _list.value;

  getList(idUser) async {
    _loading.value = true;
    update();

    _list.value = (await SourceHistory.history(idUser)).cast<History>();
    update();

    Future.delayed(const Duration(milliseconds: 900), () {
      _loading.value = false;
      update();
    });
  }

  search(idUser, date) async {
    _loading.value = true;
    update();

    _list.value =
        (await SourceHistory.historySearch(idUser, date)).cast<History>();
    update();

    Future.delayed(const Duration(milliseconds: 900), () {
      _loading.value = false;
      update();
    });
  }
}
