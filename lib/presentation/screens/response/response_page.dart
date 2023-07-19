import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/response/widgets/response_body.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class ResponsePage extends StatefulWidget {
  final String title;
  final TypeResponseEnum typeOfResponse;
  final TypeCommandEnum typeCommand;

  const ResponsePage({
    super.key,
    required this.title,
    required this.typeCommand,
    this.typeOfResponse = TypeResponseEnum.recipe,
  });

  @override
  State<ResponsePage> createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: widget.title),
      body: ResponseBody(
        initialText: widget.typeCommand.label,
        typeOfResponse: widget.typeOfResponse,
      ),
    );
  }
}
