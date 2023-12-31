import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../constants/sizes_constants.dart';
import '../../logic/logic_provider.dart';

class ProfileCharacterBox extends StatelessWidget {
  const ProfileCharacterBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pickedCharacter = Provider.of<LogicProvider>(context);
    return SizedBox(
      height: 250.0,
      width: 100,
      child: ClipRRect(
        borderRadius: SizesConstants.kBorderRadius12,
        child: Lottie.asset(pickedCharacter.character),
      ),
    );
  }
}
