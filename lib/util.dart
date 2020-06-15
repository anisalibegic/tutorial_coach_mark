import 'package:flutter/widgets.dart';
import 'package:tutorial_coach_mark/target_focus.dart';
import 'package:tutorial_coach_mark/target_position.dart';

TargetPosition getTargetCurrent(TargetFocus target) {
  if (target.keyTarget != null) {
    var key = target.keyTarget;

    try {
      final RenderBox renderBoxRed = key.currentContext.findRenderObject();
      final size = renderBoxRed.size;
      final offset = renderBoxRed.localToGlobal(Offset.zero);

      return TargetPosition(size, offset);
    } catch (e) {
      print("ERROR: Não foi possivem oter informações da KEY");
      return null;
    }
  } else {
    return target.targetPosition;
  }
}
