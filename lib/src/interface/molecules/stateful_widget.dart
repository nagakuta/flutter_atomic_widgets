import 'package:flutter/cupertino.dart';

/// Stateful Molecule Widget
abstract class StatefulMoleculeWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const StatefulMoleculeWidget({
    final super.key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _margin = margin,
        _padding = padding;

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  @override
  MoleculeState<StatefulMoleculeWidget> createState();
}

/// Molecule State
abstract class MoleculeState<T extends StatefulMoleculeWidget>
    extends State<T> {
  /// Build a molecule widget.
  Widget buildMolecule(final BuildContext context);

  /// Build a widget with wrapper.
  Widget? buildWrapper(final BuildContext context, final Widget child) =>
      Container(
        padding: widget._padding,
        margin: widget._margin,
        child: child,
      );

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildMolecule(context);
    return buildWrapper(context, child) ?? child;
  }
}
