import 'package:flutter/material.dart';

class ScheduleTask extends StatelessWidget {
  const ScheduleTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MiddleClipper(),
      child: Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.only(
            left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
        decoration: BoxDecoration(
          color: const Color(0xff24344E),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 48.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Title",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Subtitle",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Stack(
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xffC6EBA8),
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff24344E),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff24344E),
                                        width: 1.0,
                                      ),
                                    ),
                                    margin: const EdgeInsets.only(left: 12.0),
                                    child: const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffCBC0D8),
                                      child: Text(
                                        "B",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff24344E),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff24344E),
                                        width: 1.0,
                                      ),
                                    ),
                                    margin: const EdgeInsets.only(left: 24.0),
                                    child: const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xff2CC7E7),
                                      child: Text(
                                        "C",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff24344E),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const LinearProgressIndicator(
                                value: 0.7,
                                minHeight: 6.0,
                                backgroundColor: Color(0xFF416788),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xFF6B9FBD)),
                                semanticsLabel: 'Progress',
                                semanticsValue: '70%',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            ' 70%', // Cambia este valor para el progreso deseado
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Mostrar menú de opciones
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MiddleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.25, 0);
    path.lineTo(size.width * 0.30, size.height * 0.13);
    path.lineTo(size.width * 0.70, size.height * 0.13);
    path.lineTo(size.width * 0.75, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
