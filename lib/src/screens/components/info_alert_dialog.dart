// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ml_kit_showcase_app/src/utils/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';

import 'showToastMessage.dart';

class InfoAlertDialog extends StatelessWidget {
  const InfoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    _launchUrl(Uri url) async {
      try {
        if (await launchUrl(url, mode: LaunchMode.externalApplication)) {
          await canLaunchUrl(url);
        }
      } catch (e) {
        showToastMessage(message: 'Não foi possível abrir o link.');
      }
    }

    return Center(
      child: AlertDialog(
        shadowColor: const Color(0xff49454F),
        // backgroundColor:  Color.fromARGB(255, 221, 199, 248),
        title: Text('Sobre o projeto',
            textAlign: TextAlign.center,
            style: themeData.textTheme.displayLarge?.copyWith(fontSize: 18)),
        //  color: Color.fromARGB(255, 51, 0, 67),

        content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text.rich(
              TextSpan(
                text:
                    'Este aplicativo foi desenvolvido como parte de um trabalho escolar da disciplina de Cálculo II do curso de Ciência da Computação do IFMA/Campus Imperatriz. Ele demonstra de forma prática como as integrais são usadas em visão computacional.\n\n'
                    // 'Equipe:\n'
                    // '[Nome do membro da equipe 1]\n'
                    // '[Nome do membro da equipe 2]\n'
                    // '[Nome do membro da equipe 3]\n'
                    // '[Nome do membro da equipe 4]\n\n'
                    'Acesse nosso repositório no GitHub,  O repositório contém todas as funcionalidades implementadas, incluindo as integrais aplicadas em visão computacional. Você pode acessar o repositório e explorar o código em detalhes para entender melhor como implementamos as funcionalidades.\n\n',
                style: themeData.textTheme.displaySmall?.copyWith(fontSize: 14),
                // color: Color.fromARGB(255, 51, 0, 67),
                children: [
                  TextSpan(
                      text: 'LINK PARA O REPOSITÓRIO\n\n',
                      style: themeData.textTheme.displaySmall?.copyWith(
                          //set italic font
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _launchUrl(Uri.parse(
                              'https://github.com/vnschneider/ml_kit_showcase_app'));
                        }),
                  TextSpan(
                    text:
                        'Esperamos que este aplicativo possa fornecer uma compreensão mais visual e interativa dos conceitos de cálculo e visão computacional. Ficamos felizes em compartilhar nosso trabalho no GitHub e incentivamos você a contribuir. Esperamos que esse repositório possa ser útil para você e para outros interessados em aprender sobre integrais e visão computacional.',
                    style: themeData.textTheme.displaySmall
                        ?.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
