import 'package:flutter/material.dart';
import 'package:quacker/constants.dart';
import 'package:quacker/generated/l10n.dart';
import 'package:quacker/home/home_screen.dart';
import 'package:quacker/ui/errors.dart';

class MissingScreen extends StatelessWidget {
  const MissingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: createCommonAppBarActions(context),
      ),
      body: EmojiErrorWidget(
        emoji: '🧨',
        message: L10n.current.missing_page,
        errorMessage: L10n.current.two_home_pages_required,
        retryText: L10n.current.choose_pages,
        onRetry: () => Navigator.pushNamed(context, routeSettingsHome),
        showBackButton: false,
      ),
    );
  }
}
