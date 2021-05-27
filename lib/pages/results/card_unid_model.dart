import 'package:ajuda_sus_refactored/pages/publications/publications_page.dart';
import 'package:flutter/material.dart';

class CardUnidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PublicationsPage(),
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
                  "UPA 24hrs",
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
                      "Rua São Pedro, Fátima - CEP: 45.600.025",
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
                      "(73) 3212-5687",
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
                      "Segunda à Sexta das 07:00 às 17:30 Sábado das 07:00 às 12:00",
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
