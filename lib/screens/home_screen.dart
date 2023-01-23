import 'package:calculator_app/data/data.dart';
import 'package:calculator_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProvider themeProvider, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                            topLeft: radius15,
                            bottomLeft: radius15,
                          ),
                        ),
                        child: InkWell(
                          onTap: () => themeProvider.select(1),
                          child: Icon(
                            Icons.light_mode_outlined,
                            color: themeProvider.selectonIndex == 1
                                ? Colors.blueGrey.shade900
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.only(
                          topRight: radius15,
                          bottomRight: radius15,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => themeProvider.select(2),
                        child: Icon(
                          Icons.dark_mode_outlined,
                          color: themeProvider.selectonIndex == 2
                              ? Colors.blueGrey.shade900
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              color: Colors.blue,
              child: Text(
                "023",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.blueGrey.shade900),
                textDirection: TextDirection.rtl,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amberAccent,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: data.length,
                  itemBuilder: ((context, index) => Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              data[index]['char'],
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ),
            // Container(
            //   color: Colors.amberAccent,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: List.generate(
            //       data.length,
            //       (i) => Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: List.generate(
            //           data[i].length,
            //           (j) => Container(
            //             color: Colors.amber,
            //             padding: const EdgeInsets.symmetric(
            //                 vertical: 20, horizontal: 20),
            //             child: InkWell(
            //               onTap: () {},
            //               child: Text(
            //                 data[i][j]["char"],
            //                 style: Theme.of(context).textTheme.headline5,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
