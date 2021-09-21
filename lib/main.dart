import 'package:app_delivery/pages/pages.dart';
import 'package:app_delivery/pages/resto_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/bloc/platos/platos_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PlatosBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (_) => LoginPage(),
          'registro': (_) => RegistroPage(),
          'home': (_) => HomePage(),
          'map': (_) => MapPage(),
          'order': (_) => OrderPage(),
          'itemsClient': (_) => ItemsClientPage(),
          'cartList': (_) => CartPage(),
          'address': (_) => AddressPage(),
          'metodos': (_) => MetodosPagosPage(),
          'confirmOrder': (_) => ConfirmOrderPage(),
          'orderList': (_) => OrderListPage(),
          'orderInfo': (_) => OrderInfoPage(),
          'restoList': (_) => RestoListPage(),
          'restoInfo': (_) => RestoInfoPage(),
          'background': (_) => BackgroundPage(),
        },
        home: HomePage(),
      ),
    );
  }
}
