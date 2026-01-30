class FundedTradingRow {
  final String label;
  final String step1;
  final String step2;
  final String fundedRules;
  final String description;

  bool isExpanded;

  FundedTradingRow({
    required this.label,
    required this.step1,
    required this.step2,
    required this.fundedRules,
    required this.description,
    this.isExpanded = false,
  });
}
