import 'package:cross_platform_app/app-constants.dart';
import 'package:cross_platform_app/break-points.dart';
import 'package:cross_platform_app/views/home/widgets/custom-search-field/custom-search-field.widgets.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletBreakPoint) {
          return Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  courseBannerImage,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50.0,
                top: 50.0,
                child: Card(
                  color: Colors.black,
                  elevation: 8.0,
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 450.0),
                    padding: EdgeInsets.all(22.0),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Aprenda Flutter com esse Curso',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Aprenda uma das melhores tecnologias exponenciais para desenvolvimento cross-platform por apenas R\$20,00. Qualidade garantida',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        if (constraints.maxWidth >= mobileBreakPoint) {
          return SizedBox(
            height: 320.0,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 250.0,
                  width: double.infinity,
                  child: Image.network(
                    courseBannerImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20.0,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 350.0),
                      padding: EdgeInsets.all(22.0),
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Aprenda Flutter com esse Curso',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Aprenda uma das melhores tecnologias exponenciais para desenvolvimento cross-platform por apenas R\$20,00. Qualidade garantida',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3.4,
              child: SizedBox(
                height: 250.0,
                width: double.infinity,
                child: Image.network(
                  courseBannerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Aprenda Flutter com esse Curso',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Aprenda uma das melhores tecnologias exponenciais para desenvolvimento cross-platform por apenas R\$20,00. Qualidade garantida',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  CustomSearchField(),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
