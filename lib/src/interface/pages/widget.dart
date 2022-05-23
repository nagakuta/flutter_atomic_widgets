import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/src/interface/templates/widget.dart';

/// Page Widget
abstract class PageWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const PageWidget({
    final Key? key,
  }) : super(key: key);

  /// Build a scaffold body.
  TemplateWidget buildBody(final BuildContext context);

  /// Build a scaffold.
  Scaffold buildMaterialScaffold(
    final BuildContext context, {
    required final TemplateWidget body,
    final PreferredSizeWidget? appBar,
    final Widget? floatingActionButton,
  }) =>
      Scaffold(
        appBar: appBar,
        body: body,
        floatingActionButton: floatingActionButton,
      );

  /// Build a cupertino page scaffold.
  CupertinoPageScaffold? buildCupertinoScaffold(
    final BuildContext context, {
    required final TemplateWidget child,
    final ObstructingPreferredSizeWidget? navigationBar,
  }) =>
      CupertinoPageScaffold(
        navigationBar: navigationBar,
        child: child,
      );

  /// Build a app bar.
  PreferredSizeWidget? buildMaterialAppBar(final BuildContext context) =>
      AppBar();

  /// Build a cupertino navigation bar.
  ObstructingPreferredSizeWidget? buildCupertinoNavigationBar(
    final BuildContext context,
  ) =>
      const CupertinoNavigationBar();

  /// Build a floating action button.
  Widget? buildMaterialFloatingActionButton(final BuildContext context) => null;

  @override
  Widget build(final BuildContext context) {
    final CupertinoPageScaffold? cupertinoPageScaffold = buildCupertinoScaffold(
      context,
      navigationBar: buildCupertinoNavigationBar(context),
      child: buildBody(context),
    );

    final Scaffold materialScaffold = buildMaterialScaffold(
      context,
      appBar: buildMaterialAppBar(context),
      body: buildBody(context),
      floatingActionButton: buildMaterialFloatingActionButton(context),
    );

    return CupertinoUserInterfaceLevel.maybeOf(context) != null
        ? cupertinoPageScaffold ?? materialScaffold
        : materialScaffold;
  }
}
