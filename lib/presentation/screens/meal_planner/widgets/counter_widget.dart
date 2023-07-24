import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/operation_button.dart';

class CounterWidget extends StatelessWidget {
  final int number;
  final Function(int) onValueChanged;
  final bool isTime;
  final int? limit;

  factory CounterWidget.integer({
    maxLimit,
    required number,
    required Function(int) onValueChanged,
  }) {
    return CounterWidget(
      number: number,
      limit: maxLimit ?? 10,
      onValueChanged: onValueChanged,
      isTime: false,
    );
  }

  factory CounterWidget.time({
    required number,
    required Function(int) onValueChanged,
  }) {
    return CounterWidget(
      number: number,
      onValueChanged: onValueChanged,
      isTime: true,
    );
  }

  const CounterWidget({
    super.key,
    required this.number,
    required this.isTime,
    required this.onValueChanged,
    this.limit,
  });

  String getDurationString(int number) {
    final hours = number ~/ 60;
    final minutes = number % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  String getString(int number) => number.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    int maxLimit = isTime ? 360 : limit ?? 10;
    int step = isTime ? 10 : 1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        OperationButton(
          operation: 'minus',
          onTap: number > 0
              ? () {
                  onValueChanged(number - step);
                }
              : null,
        ),
        Expanded(
          child: Text(
            isTime ? getDurationString(number) : getString(number),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: number > 0
                  ? AppColors.white
                  : AppColors.white.withOpacity(0.3),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        OperationButton(
          operation: 'plus',
          onTap: number < maxLimit
              ? () {
                  onValueChanged(number + step);
                }
              : null,
        ),
      ],
    );
  }
}
