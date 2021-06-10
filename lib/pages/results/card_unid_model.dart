import 'package:ajuda_sus_refactored/models/unidade.dart';
import 'package:ajuda_sus_refactored/pages/publications/publications_page.dart';
import 'package:ajuda_sus_refactored/shared/api.dart';
import 'package:flutter/material.dart';

class CardUnidade extends StatefulWidget {
  final Api api;
  final Unidade unidade;
  const CardUnidade({this.unidade, this.api});

  @override
  _CardUnidadeState createState() => _CardUnidadeState();
}

class _CardUnidadeState extends State<CardUnidade> {
  @override
  Widget build(BuildContext context) {
    print(widget.unidade.bairro);
    return InkWell(
      onTap: () async {
        var result = await widget.api.getPub(widget.unidade.idUnidade);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PublicationsPage(
              pubs: result,
              nomeUnidade: widget.unidade.nome,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // titulo da unidade
              Container(
                child: Text(
                  widget.unidade.nome,
                  style: TextStyle(
                    fontSize: 19,
                    color: Color(0xff4FB7D4),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),

              // endereco da unidade
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.map,
                      color: Color(0xff4FB7D4),
                      size: 28,
                    ),
                    Text(
                      "Endereço",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff4FB7D4),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.unidade.rua + ', ' + widget.unidade.bairro,
                      //"Rua São Pedro, Fátima - CEP: 45.600.025",
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.7)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color(0xff4FB7D4),
                      size: 30,
                    ),
                    Text(
                      "Contato",
                      style: TextStyle(fontSize: 18, color: Color(0xff4FB7D4)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.unidade.telefone,
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.7)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              // container horario de atendimento
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Color(0xff4FB7D4),
                      size: 30,
                    ),
                    Text(
                      "Horário de Atendimento",
                      style: TextStyle(
                        fontSize: 18.5,
                        color: Color(0xff4FB7D4),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.unidade.hrFuncionamento,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
