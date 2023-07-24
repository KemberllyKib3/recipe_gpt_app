import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';

class FreeChatEmptyWidget extends StatelessWidget {
  const FreeChatEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            appName,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.white),
          ),
          Text(
            "find your meal".toLowerCase(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.white),
          ),
          Divider(
            color: Colors.white,
            indent: MediaQuery.sizeOf(context).width * 0.25,
            endIndent: MediaQuery.sizeOf(context).width * 0.25,
            height: 30,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.5,
            ),
            child: Text(
              "this is a free text chat you can ask whatever you want, try \"delicious sandwich recipe\""
                  .toLowerCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
