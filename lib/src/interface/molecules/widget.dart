import 'package:flutter/widgets.dart';

import '/src/interface/wrapper/widget.dart';

/// Molecule Widget
abstract class MoleculeWidget extends Wrapper {
  // ignore: public_member_api_docs
  const MoleculeWidget({
    final super.key,
    final super.padding,
    final super.margin,
  });

  /// Build a molecule widget.
  Widget buildMolecule(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildMolecule(context);
    return buildWrapper(context, child) ?? child;
  }
}
