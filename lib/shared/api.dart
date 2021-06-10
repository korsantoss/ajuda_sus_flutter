import 'package:ajuda_sus_refactored/models/publications.dart';
import 'package:ajuda_sus_refactored/models/unidade.dart';
import 'package:ajuda_sus_refactored/pages/home/home_page.dart';
import 'package:ajuda_sus_refactored/shared/constant.dart';
import 'package:dio/dio.dart';

class Api {
  final Dio client = Dio(BaseOptions(baseUrl: BASE_URL));

  Future getBairro() async {
    Response result;

    try {
      result = await client.get('/bairros');
    } catch (e) {
      print(e.message);
    }

    List data = result.data;

    List<Bairro> bairroList;

    bairroList = data.map((bairro) => Bairro.fromJson(bairro)).toList();

    return bairroList;
  }

  Future getUnidade(String unidade) async {
    print("1");
    Response result;
    print("2");
    try {
      print(client);
      result = await client.get('/unidades/' + unidade);
      print("result got!");
    } catch (e) {
      print("ERROR!");
      print(e.message);
    }

    List data = result.data;
    print("3");
    List<Unidade> unidadeList;
    print("4");
    unidadeList = data.map((unidade) => Unidade.fromJson(unidade)).toList();
    print("5");
    return unidadeList;
  }

  Future getPub(int pub) async {
    Response result;
    //String value = pub.toString();
    try {
      result = await client.get('/publicacoes/$pub');
    } catch (e) {
      print(e.message);
    }

    List data = result.data;

    List<PublicationModel> pubList;

    pubList = data.map((pub) => PublicationModel.fromJson(pub)).toList();

    return pubList;
  }
}
