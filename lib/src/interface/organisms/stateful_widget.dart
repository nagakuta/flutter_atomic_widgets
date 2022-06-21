import 'package:flutter/cupertino.dart';

/// Stateful Organism Widget
abstract class StatefulOrganismWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const StatefulOrganismWidget({
    final super.key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _padding = padding,
        _margin = margin;

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  @override
  OrganismState<StatefulOrganismWidget> createState();
}

/// Organism State
abstract class OrganismState<T extends StatefulOrganismWidget>
    extends State<T> {
  /// Build a organism widget.
  Widget buildOrganism(final BuildContext context);

  /// Build a widget with wrapper.
  Widget? buildWrapper(final BuildContext context, final Widget child) =>
      Container(
        padding: widget._padding,
        margin: widget._margin,
        child: child,
      );

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildOrganism(context);
    return buildWrapper(context, child) ?? child;
  }
}
