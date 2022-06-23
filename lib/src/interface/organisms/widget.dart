import 'package:flutter/widgets.dart';

import '/src/interface/wrapper/widget.dart';

/// Organism Widget
abstract class OrganismWidget extends Wrapper {
  // ignore: public_member_api_docs
  const OrganismWidget({
    final super.key,
    final super.padding,
    final super.margin,
  });

  /// Build a organism widget.
  Widget buildOrganism(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildOrganism(context);
    return buildWrapper(context, child) ?? child;
  }
}
