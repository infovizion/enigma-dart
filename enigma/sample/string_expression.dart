import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';

const loadScript = '''
TempTable:
Load
RecNo() as ID
AutoGenerate 100
''';

main() async {
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var doc = await global.createSessionApp();
  await doc.setScript(loadScript);
  await doc.doReload();
  var properties = new GenericVariableProperties((b) => b
    ..info.type = 'StringExpression'
    ..name =  'myVar1'
    ..definition = "=count(ID) & '***' &count(ID)"
    );
  var sessionVariable = await doc.createSessionVariable(properties);
  var layout = await sessionVariable.getLayout();
  print('Expression evaluates to: ${layout.text}');

  await enigma.close();
}
