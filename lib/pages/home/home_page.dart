import 'package:ajuda_sus_refactored/pages/results/results_page.dart';
import 'package:ajuda_sus_refactored/shared/api.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Bairro {
  final String bairro;

  Bairro({
    this.bairro,
  });

  @override
  String toString() {
    String result = "${bairro.toString()}";
    return result;
  }

  factory Bairro.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return Bairro(bairro: json['bairro']);
    } else {
      return Bairro(bairro: '');
    }
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Api api = Api();
  List<Bairro> bairroList;

  void initState() {
    getBairro();
    super.initState();
  }

  getBairro() async {
    bairroList = await api.getBairro();
    loading = true;
    setState(() {});
  }

  bool loading = false;
  String selectUF = '';
  String selectCidade = '';
  String selectBairro = '';
  String selectEspecialidade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: SvgPicture.asset('assets/logo.svg', height: 130),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              color: Color(0xff4FB7D4),
              width: double.infinity,
              height: 60,
              child: Text(
                "Encontre uma unidade de saúde",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  DropdownSearch<String>(
                    showSearchBox: true,
                    mode: Mode.MENU,
                    dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff4FB7D4),
                              style: BorderStyle.solid,
                              width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff4FB7D4),
                              style: BorderStyle.solid,
                              width: 2)),
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      labelStyle:
                          TextStyle(fontSize: 20, color: Color(0xff4FB7D4)),
                    ),
                    items: ["BA"],
                    enabled: false,
                    label: "UF",
                    // hint: "country in menu mode",
                    // popupItemDisabled: (String s) => s.startsWith('I'),
                    onChanged: (data) {
                      setState(() {
                        selectUF = data;
                        print(selectUF);
                      });
                    },
                    selectedItem: selectUF == '' ? "BA" : selectUF,
                  ),
                  Text(selectUF),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSearchBox: true,
                    dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff4FB7D4),
                              style: BorderStyle.solid,
                              width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff4FB7D4),
                              style: BorderStyle.solid,
                              width: 2)),
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      labelStyle:
                          TextStyle(fontSize: 20, color: Color(0xff4FB7D4)),
                    ),
                    items: [
                      "Itabuna",
                    ],
                    enabled: false,
                    label: "Cidade",
                    hint: "country in menu mode",
                    // popupItemDisabled: (String s) => s.startsWith('I'),
                    onChanged: (data) {
                      setState(() {
                        selectCidade = data;
                        print(selectUF);
                      });
                    },
                    selectedItem: selectCidade == '' ? "Itabuna" : selectCidade,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: loading == false
                  ? CircularProgressIndicator()
                  : Column(
                      children: [
                        DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSearchBox: true,
                          dropdownSearchDecoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff4FB7D4),
                                    style: BorderStyle.solid,
                                    width: 2)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff4FB7D4),
                                    style: BorderStyle.solid,
                                    width: 2)),
                            contentPadding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Color(0xff4FB7D4)),
                          ),
                          items: bairroList.map((e) => e.bairro).toList(),
                          label: "Bairro",
                          hint: "country in menu mode",
                          // popupItemDisabled: (String s) => s.startsWith('I'),
                          onChanged: (data) {
                            setState(() {
                              selectBairro = data;
                            });
                          },
                          selectedItem: selectBairro == ''
                              ? "Selecione o bairro"
                              : selectBairro,
                        ),

                        // button
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff3AB2D6)),
                            child: Text(
                              "Buscar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.5,
                              ),
                            ),
                            onPressed: () async {
                              print(api);
                              var result = await api.getUnidade(selectBairro);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultsPage(
                                    unidades: result,
                                    api: api,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
