//Eduardo fase zero ou HISTÓRIA
// talvez precise de mais um arquivo, coloque dentro da pasta

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class ZeroPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;

  ZeroPage({required this.userM, required this.nameM, required this.phaseM});

  @override
  State<ZeroPage> createState() => _ZeroPageState();
}

class _ZeroPageState extends State<ZeroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        //alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gif/estatica_t.gif'),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Container(
                      //width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "No início dos tempos não existia nada, nem matéria  "
                        "para formar estrelas e galáxias ou poeira espacial,"
                        "somente havia energia pura, que foi crescendo "
                        "durante milhões de anos até o momento em que se "
                        "transformou em algo a mais. Em um ponto remoto do "
                        "universo surgiram seres de puro poder, cada um capaz "
                        "de criar matéria e com o dom de controlar um "
                        "aspecto sobre ela. No lugar onde nasceram, criaram "
                        "uma galáxia onde somente havia uma estrela e "
                        "diversos mundos com diferentes tipos de espécies "
                        "recém criadas.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Em um certo momento, os criadores deram-se por "
                        "satisfeitos e decidiram por avançar para o restante "
                        "do universo, portanto Cronos, o Deus com o dom do "
                        "tempo, sugeriu que existissem protetores para guiar "
                        "as criaturas que ficariam para trás. Nisto, uma nova "
                        "raça foi criada os “Malkavinos” com um novo dom "
                        "“a magia”, esta que não respeitava as leis da "
                        "natureza, sob o comando de “Magnum Chaos”, um ser sem "
                        "etéreo que não possuía um corpo material, pois "
                        "compartilhava do poder dos Deuses, e assim eles "
                        "se foram.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Entretanto, com o passar do tempo Magnum Chaos viu "
                        "todos ao seu redor evoluírem, o próprio povo que "
                        "estava sob sua guarda havia melhorado na utilização "
                        "de magia, mesmo os seres antes irracionais agora "
                        "formavam civilizações. Menos ele, Magnum Chaos não "
                        "havia mudado, e no início este fato não o incomodava, "
                        "pois os Deuses também continuavam os mesmos, mas com "
                        "o passar das gerações, com os avanços ao qual ele "
                        "assistia um desejo se formou no íntimo do seu ser, "
                        "começou a pensar em evoluir, mas para isso era "
                        "necessário um corpo material, e então ele começou a "
                        "devorar os seres que deveria proteger.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sendo assim, os Malkavinos tentam detê-lo, mas vendo "
                        "que não conseguiriam acabam por enviar seu melhor mago "
                        "atrás de Cronos e quando eles retornam ao planeta "
                        "quase todo o povo havia sido dizimado. Nisto eles se "
                        "enfrentam, Magnum é ferido e foge, Cronos fala ao povo "
                        "que ele não vai sobreviver, mas eles não crêem nisto e "
                        "unem os seus últimos integrantes para fazer uma magia, "
                        "onde iriam transferir a energia da única estrela de "
                        "sua galáxia para o ser cuja a índole fosse oposta a "
                        "de Magnum, quando ele ressurgisse.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MapPage(
                                      name: widget.nameM,
                                      user: widget.userM,
                                      phase: 1,
                                    ))));
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      child: const Text(
                        'Próximo',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
