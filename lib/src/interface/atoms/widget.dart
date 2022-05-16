import 'package:flutter/cupertino.dart';

/// Atom Widget
abstract class AtomWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const AtomWidget({
    final Key? key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _padding = padding,
        _margin = margin,
        super(key: key);

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  /// Build a material widget.
  Widget buildMaterial(final BuildContext context);

  /// Build a cupertino widget.
  Widget? buildCupertino(final BuildContext context) => null;

  /// Build a widget with wrapper.
  Widget buildWrapper(final BuildContext context, final Widget? child) =>
      Container(
        padding: _padding,
        margin: _margin,
        child: child,
      );

  @override
  Widget build(final BuildContext context) {
    final Widget? child = CupertinoUserInterfaceLevel.maybeOf(context) != null
        ? buildCupertino(context)
        : buildMaterial(context);

    return buildWrapper(context, child);
  }
}
