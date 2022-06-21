import 'package:flutter/cupertino.dart';

/// Stateful Atom Widget
abstract class StatefulAtomWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const StatefulAtomWidget({
    final super.key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _padding = padding,
        _margin = margin;

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  @override
  AtomState<StatefulAtomWidget> createState();
}

/// Atom State
abstract class AtomState<T extends StatefulAtomWidget> extends State<T> {
  /// Build a material widget.
  Widget buildMaterial(final BuildContext context);

  /// Build a cupertino widget.
  Widget? buildCupertino(final BuildContext context) => null;

  /// Build a widget with wrapper.
  Widget? buildWrapper(final BuildContext context, final Widget? child) =>
      Container(
        padding: widget._padding,
        margin: widget._margin,
        child: child,
      );

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
