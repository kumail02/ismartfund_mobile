import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/modules/home/models/fund_trading_model.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/theme/text_styles.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class FundedTradingTable extends StatelessWidget {
  const FundedTradingTable({super.key});

  @override
  Widget build(BuildContext context) {
    return _DesktopTable(data: fundedTradingData);
  }
}

class _DesktopTable extends StatefulWidget {
  final List<FundedTradingRow> data;

  const _DesktopTable({required this.data});

  @override
  State<_DesktopTable> createState() => _DesktopTableState();
}

class _DesktopTableState extends State<_DesktopTable> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: DataTable(
          horizontalMargin: 10,
          dataRowMaxHeight: 70,
          border: TableBorder.all(color: AppColors.primary),
          headingRowColor: MaterialStateProperty.all(AppColors.primary),
          headingTextStyle: globalTextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
          columns: const [
            DataColumn(
              label: CustomText(
                text: 'FUNDED TRADING PLUS',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            DataColumn(
              label: CustomText(
                text: 'STEP 1',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            DataColumn(
              label: CustomText(
                text: 'STEP 2',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            DataColumn(
              label: CustomText(
                text: 'FUNDED ACCOUNT RULES',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
          rows: _buildRows(context),
        ),
      ),
    );
  }

  List<DataRow> _buildRows(BuildContext context) {
    final List<DataRow> rows = [];

    for (final item in widget.data) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      item.isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: AppColors.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        item.isExpanded = !item.isExpanded;
                      });
                    },
                  ),
                  Expanded(
                    child: CustomText(
                      text: item.label,
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            DataCell(
              CustomText(
                text: item.step1,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            DataCell(
              CustomText(
                text: item.step2,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            DataCell(
              CustomText(
                text: item.fundedRules,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );

      if (item.isExpanded) {
        rows.add(
          DataRow(
            cells: [
              DataCell(
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: item.isExpanded ? 200 : double.infinity,
                    child: CustomText(
                      text: item.description,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const DataCell(SizedBox()),
              const DataCell(SizedBox()),
              const DataCell(SizedBox()),
            ],
          ),
        );
      }
    }

    return rows;
  }
}
