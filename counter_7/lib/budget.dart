class Budget {
  Budget({required this.judul, required this.nominal, required this.jenis});
  String judul;
  double nominal;
  String jenis;
}

class ListBudget {
  static List<Budget> data = [];
}