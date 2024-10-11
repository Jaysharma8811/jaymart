import 'package:jay_mart/consts/consts.dart';


Widget ourButton({onPress,color, textColor, title }) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        backgroundColor: color,
        padding: const EdgeInsets.all(12),

      ),
      onPressed: () {
        onPress();
      }, child: title
      .toString()
      .text
      .color(textColor)
      .make());
}