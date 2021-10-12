import 'package:app_responsive/core/breakpoints.dart';
import 'package:app_responsive/pages/home/widgets/fields/fields.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 50.0,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      padding: const EdgeInsets.all(22.0),
                      width: 400.0,
                      child: Column(
                        children: [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Vamos aprender Flutter com o professor Luan David! Cursos por apenas R\$22,90. Qualidade Garantida',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320.0,
            child: Stack(
              children: [
                SizedBox(
                  height: 250.0,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 20.0,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      padding: const EdgeInsets.all(22.0),
                      width: 350.0,
                      child: Column(
                        children: [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Vamos aprender Flutter com o professor Luan David! Cursos por apenas R\$22,90. Qualidade Garantida',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),)
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
