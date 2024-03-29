import 'package:flutter/material.dart';

const String kAppName = 'Codesaima';
const String kAddressBox = 'Address';
const String kSocialNetworksBox = 'SocialNetworks';
const String kSimplePersonBox = 'BoxRegisterSearch';
const String kCompletePersonBox = 'BoxRegisterMorarMelhor';
const String kPersonSpouseBox = 'BoxPersonSpouse';
const String kDeficientPersonBox = 'BoxDeficientPerson';
const String kResidentFamiliarBox = 'BoxResidentFamiliar';
const String kEdificeInformationBox = 'BoxEdificeInformation';

const String kPathMainLogoCodesaima = 'lib/assets/images/logo_codesaima.png';
const String kPathMainLogoCodesaimaBranca =
    'lib/assets/images/logo_codesaima_branca.png';
const String kPathLogoMorarMelhor = 'lib/assets/images/logo_morar_melhor.png';
const String kPathLogoAquiTemDono = 'lib/assets/images/logo_aqui_tem_dono.png';
const String kPathLogoGovRoraimaPreta = 'lib/assets/images/logo_gov_preta.png';
const String kPathLogoFacebook =
    'lib/assets/images/logotipo-circular-do-facebook.png';
const String kPathLogoInstagram =
    'lib/assets/images/logotipo-circular-do-instagram.png';
const String kPathLogoYoutube =
    'lib/assets/images/logotipo-circular-do-youtube.png';
const String kPathLogoWhatsapp =
    'lib/assets/images/logotipo-circular-do-whatsapp.png';
const String kPathEdificeCodesaimaBackground =
    'lib/assets/images/edifice_codesaima_background.jpg';

const String kFontOpenSans = 'lib/assets/fonts/opensans/OpenSans-Regular.ttf';

final kTextFieldDecorationMorarMelhor = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  ),
  fillColor: Colors.orange[50],
  filled: true,
);
final kTextFieldGeneralDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  ),
  fillColor: Colors.blueGrey[50],
  filled: true,
);

final kGeneralThemeData =
    ThemeData(primarySwatch: Colors.red, useMaterial3: true);
final kMorarMelhorThemeData = ThemeData(
  backgroundColor: Colors.orange,
  inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.orange[50],
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      )),
  primarySwatch: Colors.orange,
);

enum Gender { male, female, other }

const List<DropdownMenuItem<String>> dropdownCities = [
  DropdownMenuItem(child: Text('AMAJARI'), value: 'AMAJARI'),
  DropdownMenuItem(child: Text('ALTO ALEGRE'), value: 'ALTO ALEGRE'),
  DropdownMenuItem(child: Text('BOA VISTA'), value: 'BOA VISTA'),
  DropdownMenuItem(child: Text('BONFIM'), value: 'BONFIM'),
  DropdownMenuItem(child: Text('CANTÁ'), value: 'CANTÁ'),
  DropdownMenuItem(child: Text('CARACARAÍ'), value: 'CARACARAÍ'),
  DropdownMenuItem(child: Text('CAROEBE'), value: 'CAROEBE'),
  DropdownMenuItem(child: Text('IRACEMA'), value: 'IRACEMA'),
  DropdownMenuItem(child: Text('MUCAJAÍ'), value: 'MUCAJAÍ'),
  DropdownMenuItem(child: Text('NORMANDIA'), value: 'NORMANDIA'),
  DropdownMenuItem(child: Text('PACARAIMA'), value: 'PACARAIMA'),
  DropdownMenuItem(child: Text('RORAINÓPOLIS'), value: 'RORAINÓPOLIS'),
  DropdownMenuItem(
      child: Text('SÃO JOÃO DA BALIZA'), value: 'SÃO JOÃO DA BALIZA'),
  DropdownMenuItem(child: Text('SÃO LUIZ'), value: 'SÃO LUIZ'),
  DropdownMenuItem(child: Text('UIRAMUTÃ'), value: 'UIRAMUTÃ'),
];
const List<String> civilStateList = [
  'SOLTEIRO(A)',
  'DIVORCIADO(A)',
  'VIÚVO(A)',
  'UNIÃO ESTÁVEL/OUTROS',
  'CASADO(A) SEPARAÇÃO TOTAL DE BENS',
  'CASADO(A) COMUNHÃO PARCIAL DE BENS',
  'CASADO(A) COMUNHÃO TOTAL DE BENS',
];

const List<String> educationLevelList = [
  'FUNDAMENTAL 1 COMPLETO',
  'FUNDAMENTAL 1 INCOMPLETO',
  'FUNDAMENTAL 2 COMPLETO',
  'FUNDAMENTAL 2 INCOMPLETO',
  'ENSINO MÉDIO COMPLETO',
  'ENSINO MÉDIO INCOMPLETO',
  'ENSINO SUPERIOR COMPLETO',
  'ENSINO SUPERIOR INCOMPLETO',
  'ANALFABETO'
];

showGeneralProgressIndicator(BuildContext context, String message) {
  AlertDialog alert = AlertDialog(
    content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(margin: const EdgeInsets.only(left: 5), child: Text(message)),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showGeneralAlertMessage(BuildContext context, String message) {
  Widget okButton = ElevatedButton(
      onPressed: () => Navigator.pop(context), child: const Text('OK'));
  AlertDialog alert = AlertDialog(
    content: Text(message),
    actions: [okButton],
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

const List<String> listCountries = [
  'AFEGANISTÃO',
  'ÁFRICA DO SUL',
  'AKROTIRI',
  'ALBÂNIA',
  'ALEMANHA',
  'ANDORRA',
  'ANGOLA',
  'ANGUILA',
  'ANTÁRCTIDA',
  'ANTÍGUA E BARBUDA',
  'ARÁBIA SAUDITA',
  'ARCTIC OCEAN',
  'ARGÉLIA',
  'ARGENTINA',
  'ARMÉNIA',
  'ARUBA',
  'ASHMORE AND CARTIER ISLANDS',
  'ATLANTIC OCEAN',
  'AUSTRÁLIA',
  'ÁUSTRIA',
  'AZERBAIJÃO',
  'BAAMAS',
  'BANGLADECHE',
  'BARBADOS',
  'BARÉM',
  'BÉLGICA',
  'BELIZE',
  'BENIM',
  'BERMUDAS',
  'BIELORRÚSSIA',
  'BIRMÂNIA',
  'BOLÍVIA',
  'BÓSNIA E HERZEGOVINA',
  'BOTSUANA',
  'BRASIL',
  'BRUNEI',
  'BULGÁRIA',
  'BURQUINA FASO',
  'BURÚNDI',
  'BUTÃO',
  'CABO VERDE',
  'CAMARÕES',
  'CAMBOJA',
  'CANADÁ',
  'CATAR',
  'CAZAQUISTÃO',
  'CHADE',
  'CHILE',
  'CHINA',
  'CHIPRE',
  'CLIPPERTON ISLAND',
  'COLÔMBIA',
  'COMORES',
  'CONGO-BRAZZAVILLE',
  'CONGO-KINSHASA',
  'CORAL SEA ISLANDS',
  'COREIA DO NORTE',
  'COREIA DO SUL',
  'COSTA DO MARFIM',
  'COSTA RICA',
  'CROÁCIA',
  'CUBA',
  'CURACAO',
  'DHEKELIA',
  'DINAMARCA',
  'DOMÍNICA',
  'EGIPTO',
  'EMIRATOS ÁRABES UNIDOS',
  'EQUADOR',
  'ERITREIA',
  'ESLOVÁQUIA',
  'ESLOVÉNIA',
  'ESPANHA',
  'ESTADOS UNIDOS',
  'ESTÓNIA',
  'ETIÓPIA',
  'FAROÉ',
  'FIJI',
  'FILIPINAS',
  'FINLÂNDIA',
  'FRANÇA',
  'GABÃO',
  'GÂMBIA',
  'GANA',
  'GAZA STRIP',
  'GEÓRGIA',
  'GEÓRGIA DO SUL E SANDWICH DO SUL',
  'GIBRALTAR',
  'GRANADA',
  'GRÉCIA',
  'GRONELÂNDIA',
  'GUAME',
  'GUATEMALA',
  'GUERNSEY',
  'GUIANA',
  'GUINÉ',
  'GUINÉ EQUATORIAL',
  'GUINÉ-BISSAU',
  'HAITI',
  'HONDURAS',
  'HONG KONG',
  'HUNGRIA',
  'IÉMEN',
  'ILHA BOUVET',
  'ILHA DO NATAL',
  'ILHA NORFOLK',
  'ILHAS CAIMÃO',
  'ILHAS COOK',
  'ILHAS DOS COCOS',
  'ILHAS FALKLAND',
  'ILHAS HEARD E MCDONALD',
  'ILHAS MARSHALL',
  'ILHAS SALOMÃO',
  'ILHAS TURCAS E CAICOS',
  'ILHAS VIRGENS AMERICANAS',
  'ILHAS VIRGENS BRITÂNICAS',
  'ÍNDIA',
  'INDIAN OCEAN',
  'INDONÉSIA',
  'IRÃO',
  'IRAQUE',
  'IRLANDA',
  'ISLÂNDIA',
  'ISRAEL',
  'ITÁLIA',
  'JAMAICA',
  'JAN MAYEN',
  'JAPÃO',
  'JERSEY',
  'JIBUTI',
  'JORDÂNIA',
  'KOSOVO',
  'KUWAIT',
  'LAOS',
  'LESOTO',
  'LETÓNIA',
  'LÍBANO',
  'LIBÉRIA',
  'LÍBIA',
  'LISTENSTAINE',
  'LITUÂNIA',
  'LUXEMBURGO',
  'MACAU',
  'MACEDÓNIA',
  'MADAGÁSCAR',
  'MALÁSIA',
  'MALÁVI',
  'MALDIVAS',
  'MALI',
  'MALTA',
  'MAN, ISLE OF',
  'MARIANAS DO NORTE',
  'MARROCOS',
  'MAURÍCIA',
  'MAURITÂNIA',
  'MÉXICO',
  'MICRONÉSIA',
  'MOÇAMBIQUE',
  'MOLDÁVIA',
  'MÓNACO',
  'MONGÓLIA',
  'MONSERRATE',
  'MONTENEGRO',
  'MUNDO',
  'NAMÍBIA',
  'NAURU',
  'NAVASSA ISLAND',
  'NEPAL',
  'NICARÁGUA',
  'NÍGER',
  'NIGÉRIA',
  'NIUE',
  'NORUEGA',
  'NOVA CALEDÓNIA',
  'NOVA ZELÂNDIA',
  'OMÃ',
  'PACIFIC OCEAN',
  'PAÍSES BAIXOS',
  'PALAU',
  'PANAMÁ',
  'PAPUA-NOVA GUINÉ',
  'PAQUISTÃO',
  'PARACEL ISLANDS',
  'PARAGUAI',
  'PERU',
  'PITCAIRN',
  'POLINÉSIA FRANCESA',
  'POLÓNIA',
  'PORTO RICO',
  'PORTUGAL',
  'QUÉNIA',
  'QUIRGUIZISTÃO',
  'QUIRIBÁTI',
  'REINO UNIDO',
  'REPÚBLICA CENTRO-AFRICANA',
  'REPÚBLICA DOMINICANA',
  'ROMÉNIA',
  'RUANDA',
  'RÚSSIA',
  'SALVADOR',
  'SAMOA',
  'SAMOA AMERICANA',
  'SANTA HELENA',
  'SANTA LÚCIA',
  'SÃO BARTOLOMEU',
  'SÃO CRISTÓVÃO E NEVES',
  'SÃO MARINHO',
  'SÃO MARTINHO',
  'SÃO PEDRO E MIQUELON',
  'SÃO TOMÉ E PRÍNCIPE',
  'SÃO VICENTE E GRANADINAS',
  'SARA OCIDENTAL',
  'SEICHELES',
  'SENEGAL',
  'SERRA LEOA',
  'SÉRVIA',
  'SINGAPURA',
  'SINT MAARTEN',
  'SÍRIA',
  'SOMÁLIA',
  'SOUTHERN OCEAN',
  'SPRATLY ISLANDS',
  'SRI LANCA',
  'SUAZILÂNDIA',
  'SUDÃO',
  'SUDÃO DO SUL',
  'SUÉCIA',
  'SUÍÇA',
  'SURINAME',
  'SVALBARD E JAN MAYEN',
  'TAILÂNDIA',
  'TAIWAN',
  'TAJIQUISTÃO',
  'TANZÂNIA',
  'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO',
  'TERRITÓRIOS AUSTRAIS FRANCESES',
  'TIMOR LESTE',
  'TOGO',
  'TOKELAU',
  'TONGA',
  'TRINDADE E TOBAGO',
  'TUNÍSIA',
  'TURQUEMENISTÃO',
  'TURQUIA',
  'TUVALU',
  'UCRÂNIA',
  'UGANDA',
  'UNIÃO EUROPEIA',
  'URUGUAI',
  'USBEQUISTÃO',
  'VANUATU',
  'VATICANO',
  'VENEZUELA',
  'VIETNAME',
  'WAKE ISLAND',
  'WALLIS E FUTUNA',
  'WEST BANK',
  'ZÂMBIA',
  'ZIMBABUÉ',
];
