import 'package:flutter/cupertino.dart';

import '/src/interface/wrapper/stateful_widget.dart';

/// Stateful Molecule Widget
abstract class StatefulMoleculeWidget extends StatefulWrapper {
  // ignore: public_member_api_docs
  const StatefulMoleculeWidget({
    final super.key,
    final super.padding,
    final super.margin,
  });

  @override
  MoleculeState<StatefulMoleculeWidget> createState();
}

/// Molecule State
abstract class MoleculeState<T extends StatefulMoleculeWidget>
    extends WrapperState<T> {
  /// Build a molecule widget.
  Widget buildMolecule(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildMolecule(context);
    return buildWrapper(context, child) ?? child;
  }
}
