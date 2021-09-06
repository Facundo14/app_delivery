import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SlideShow extends StatelessWidget {
  final List<Widget> slides;
  final bool puntosArriba;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;

  SlideShow({
    required this.slides,
    this.puntosArriba = false,
    this.colorPrimario = Colors.red,
    this.colorSecundario = Colors.grey,
    this.bulletPrimario = 12.0,
    this.bulletSecundario = 12.0,
  });
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _SlideshowModel(),
      child: Center(
        child: Builder(
          builder: (BuildContext context) {
            final ssModel = Provider.of<_SlideshowModel>(context);
            ssModel.colorPrimario = this.colorPrimario;
            ssModel.colorSecundario = this.colorSecundario;
            ssModel.bulletPrimario = this.bulletPrimario;
            ssModel.bulletSecundario = this.bulletSecundario;
            return Column(
              children: <Widget>[
                Expanded(
                  child: _Slides(this.slides),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Slides extends StatefulWidget {
  final List<Widget> slides;
  _Slides(this.slides);
  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      Provider.of<_SlideshowModel>(context, listen: false).currentPage = pageViewController.page!.toDouble();
    });
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: pageViewController,
        children: widget.slides.map((slide) => _Slide(slide)).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Widget slide;

  const _Slide(this.slide);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: slide,
    );
  }
}

class _SlideshowModel extends ChangeNotifier {
  double _currentPage = 0;
  Color _colorPrimario = Colors.red;
  Color _colorSecundario = Colors.grey;
  double _bulletPrimario = 12;
  double _bulletSecundario = 12;

  double get currentPage => this._currentPage;

  set currentPage(double currentPage) {
    this._currentPage = currentPage;
    notifyListeners();
  }

  Color get colorPrimario => this._colorPrimario;

  set colorPrimario(Color colorPrimario) {
    this._colorPrimario = colorPrimario;
  }

  Color get colorSecundario => this._colorSecundario;

  set colorSecundario(Color colorSecundario) {
    this._colorSecundario = colorSecundario;
  }

  double get bulletPrimario => this._bulletPrimario;

  set bulletPrimario(double bulletPrimario) {
    this._bulletPrimario = bulletPrimario;
  }

  double get bulletSecundario => this._bulletSecundario;

  set bulletSecundario(double bulletSecundario) {
    this._bulletSecundario = bulletSecundario;
  }
}
