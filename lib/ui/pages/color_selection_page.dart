import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Description'),
      content: Text('This is a basic Flutter app that use the row widget and passing a function as a parameter.'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff00BCD1),
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: const Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: ListView(
          children: [
            ColorPalette(
              baseColor:  'F65A83',
              baseColor1: 'FF87B2',
              baseColor2: 'FFE898',
              baseColor3: 'FFF8BC',
              callback: showColor,
            ),

            ColorPalette(
              baseColor:  '2A0944',
              baseColor1: '3FA796',
              baseColor2: 'FEC260',
              baseColor3: 'A10035',
              callback: showColor,
            ),


            ColorPalette(
              baseColor:  '100720',
              baseColor1: '31087B',
              baseColor2: 'FA2FB5',
              baseColor3: 'FFC23C',
              callback: showColor,
            ),

            ColorPalette(
              baseColor:  'EAE509',
              baseColor1: '7DCE13',
              baseColor2: '5BB318',
              baseColor3: '2B7A0B',
              callback: showColor,
            ),


            ColorPalette(
              baseColor:  '5800FF',
              baseColor1: '0096FF',
              baseColor2: '00D7FF',
              baseColor3: '72FFFF',
              callback: showColor,
            ),


            ColorPalette(
              baseColor:  '003865',
              baseColor1: 'EF5B0C',
              baseColor2: 'D4F6CC',
              baseColor3: '3CCF4E',
              callback: showColor,
            ),

            ColorPalette(
              baseColor:  '76BA99',
              baseColor1: '876445',
              baseColor2: 'CA955C',
              baseColor3: 'EDDFB3',
              callback: showColor,
            ),


            ColorPalette(
              baseColor:  'FEFBF6',
              baseColor1: 'A6D1E6',
              baseColor2: '7F5283',
              baseColor3: '3D3C42',
              callback: showColor,
            ),

            ColorPalette(
              baseColor:  '293462',
              baseColor1: 'D61C4E',
              baseColor2: 'FEB139',
              baseColor3: 'FFF80A',
              callback: showColor,
            ),


            ColorPalette(
              baseColor:  '3330E4',
              baseColor1: 'F637EC',
              baseColor2: 'FBB454',
              baseColor3: 'FAEA48',
              callback: showColor,
            )
          ],
        ));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
