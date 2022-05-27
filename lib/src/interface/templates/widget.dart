import 'package:flutter/widgets.dart';

/// Template Widget
abstract class TemplateWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const TemplateWidget({
    final super.key,
  });

  /// Build a template widget.
  Widget buildTemplate(final BuildContext context);

  /// Build a safe area.
  SafeArea buildSafeArea(final BuildContext context, final Widget child) =>
      SafeArea(child: child);

  @override
  Widget build(final BuildContext context) =>
      buildSafeArea(context, buildTemplate(context));
}
