import 'package:flutter/widgets.dart';

/// Organism Widget
abstract class OrganismWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const OrganismWidget({
    final super.key,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  })  : _padding = padding,
        _margin = margin;

  final EdgeInsetsGeometry? _padding;
  final EdgeInsetsGeometry? _margin;

  /// Build a organism widget.
  Widget buildOrganism(final BuildContext context);

  /// Build a widget with wrapper.
  Widget? buildWrapper(final BuildContext context, final Widget child) =>
      Container(
        padding: _padding,
        margin: _margin,
        child: child,
      );

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildOrganism(context);
    return buildWrapper(context, child) ?? child;
  }
}
