import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ml_kit_showcase_app/src/functions/vision_detector_views/detector_views.dart';
import 'package:ml_kit_showcase_app/src/screens/components/info_alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Google ML Kit showcase app',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            IconButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.transparent)),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const InfoAlertDialog();
                                    },
                                  );
                                },
                                icon: Icon(
                                  Iconsax.information,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 28,
                                ))
                          ],
                        ),
                        Text(
                          'Explore como as integrais são aplicadas na visão computacional de forma educativa e interativa.',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(
                            'Detector de Objetos',
                            'Identifica e localiza objetos em imagens ou vídeos.',
                            Iconsax.d_cube_scan,
                            () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ObjectDetectorView();
                                }))),
                        customCard(
                            'Rotulador de imagens',
                            'Permite marcar e etiquetar regiões ou características em imagens.',
                            Iconsax.image,
                            () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ImageLabelView();
                                }))),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(
                            'Detector facial',
                            'Reconhece rostos e analisa características faciais.',
                            Iconsax.profile_circle,
                            () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const FaceDetectorView();
                                }))),
                        customCard(
                            'Captura de movimentos',
                            'Registra e interpreta movimentos do usuário, permitindo interações baseadas em gestos.',
                            Iconsax.cpu_charge,
                            () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const PoseDetectorView();
                                }))),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCard(
      String title, description, IconData icon, void Function()? onTap) {
    bool cardHover = false;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 210,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 170,
              child: Card(
                  elevation: cardHover == true ? 6 : 2,
                  child: InkWell(
                    enableFeedback: true,
                    onHover: (value) {
                      setState(() {
                        cardHover = value;
                      });
                    },
                    hoverColor: Theme.of(context).colorScheme.primary,
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onTap: onTap,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            description,
                            style: Theme.of(context).textTheme.displaySmall,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          Positioned(
              top: 18,
              left: 16,
              child: IconButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  iconSize: 32,
                  onPressed: () {},
                  icon: Icon(
                    icon,
                    color: const Color(0xff49454F),
                  ))),
        ],
      ),
    );
  }
}
