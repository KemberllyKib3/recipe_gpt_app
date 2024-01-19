import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/presentation/shared/widgets/chat_widgets/content_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/custom_toast_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/small_action_button_widget.dart';
import 'package:recipe_gpt/shared/constants.dart';

class ChatBallonWidget extends StatelessWidget {
  final Message message;

  const ChatBallonWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return message.sender == TypeSenderEnum.user
        ? _buildSender(context, text: message.text!)
        : _buildResponder(context, message: message);
  }

  Widget _buildResponder(BuildContext context, {required Message message}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
      decoration: const BoxDecoration(
        color: AppColors.gpt,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(child: ContentWidget(message: message)),
            ],
          ),
          const SizedBox(height: 10),
          SmallActionButtonWidget(
            icon: Icons.copy_outlined,
            label: "copy to clipboard",
            onTap: () {
              Clipboard.setData(ClipboardData(text: message.toClipboard));

              CustomToastWidget.show(
                context,
                typeToast: TypeToastEnum.normal,
                message: "Copied to clipboard!",
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSender(BuildContext context, {required String text}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 13,
          ),
          decoration: const BoxDecoration(
            color: AppColors.greenSender,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ],
          )),
    );
  }
}
