import 'package:flutter/cupertino.dart';

import '/src/interface/wrapper/stateful_widget.dart';

/// Stateful Atom Widget
abstract class StatefulAtomWidget extends StatefulWrapper {
  // ignore: public_member_api_docs
  const StatefulAtomWidget({
    final super.key,
    final super.padding,
    final super.margin,
  });

  @override
  AtomState<StatefulAtomWidget> createState();
}

/// Atom State
abstract class AtomState<T extends StatefulAtomWidget> extends WrapperState<T> {
  /// Build a material widget.
  Widget buildMaterial(final BuildContext context);

  /// Build a cupertino widget.
  Widget? buildCupertino(final BuildContext context) => null;

  @override
  Widget build(final BuildContext context) {
    final Widget? cupertinoWidget = buildCupertino(context);
    final Widget materialWidget = buildMaterial(context);

    final Widget child = CupertinoUserInterfaceLevel.maybeOf(context) != null
        ? cupertinoWidget ?? materialWidget
        : materialWidget;

    return buildWrapper(context, child) ?? child;
  }
}
