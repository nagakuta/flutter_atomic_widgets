import 'package:flutter/widgets.dart';

/// Molecule Widget
abstract class MoleculeWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const MoleculeWidget({
    final super.key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _padding = padding,
        _margin = margin;

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  /// Build a molecule widget.
  Widget buildMolecule(final BuildContext context);

  /// Build a widget with wrapper.
  Widget? buildWrapper(final BuildContext context, final Widget child) =>
      Container(
        padding: _padding,
        margin: _margin,
        child: child,
      );

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildMolecule(context);
    return buildWrapper(context, child) ?? child;
  }
}
