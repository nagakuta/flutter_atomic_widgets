import 'package:flutter/cupertino.dart';

import '/src/interface/wrapper/widget.dart';

/// Atom Widget
abstract class AtomWidget extends Wrapper {
  // ignore: public_member_api_docs
  const AtomWidget({
    final super.key,
    final super.padding,
    final super.margin,
  });

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
