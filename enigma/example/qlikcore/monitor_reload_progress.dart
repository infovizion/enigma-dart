import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';
import 'dart:async';

const loadScript = '''
TestData:
LOAD Null() as Dim1 AUTOGENERATE 0;

SLEEP 1500;

Concatenate(TestData)
LOAD Floor(Rand()*1000) as Dim1,
   Floor(Rand()*30) as Dim2,
   Rand() as Value
   	AUTOGENERATE 100;

SLEEP 1500;

Concatenate(TestData)
LOAD Floor(Rand()*1000) as Dim1,
   Floor(Rand()*30) as Dim2,
   Rand() as Value
   	AUTOGENERATE 100;
SLEEP 1500;

Concatenate(TestData)
LOAD Floor(Rand()*1000) as Dim1,
   Floor(Rand()*30) as Dim2,
   Rand() as Value
   	AUTOGENERATE 100;

''';

main() async {
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var doc = await global.createSessionApp();
  await doc.setScript(loadScript);
  bool reloadFinished = false;
  int savedRequestId = enigma.nextRequestId;
  doc.doReloadEx().then((res) {
    print('Reload finished.');
    reloadFinished = true;
    print('To get reload log use command: ');
    print('docker cp enigma_engine_1:${res.scriptLogFile} example/monitor_reload_progress.log');
    
  });
  while (!reloadFinished) {
    await new Future.delayed(new Duration(milliseconds: 400), () async {
      var progressData = await global.getProgress(savedRequestId);
      if (progressData.persistentProgress != null) {
        print(progressData.persistentProgress);
      }
    });
  }

  print('Query agains loaded data:');

  var properties = new GenericObjectProperties((b) => b
    ..info.type = 'my-straight-hypercube'
    ..hyperCubeDef.dimensions.addAll([
      new NxDimension((b) => b
        ..def.fieldDefs.add('Dim1')
        ..def.sortCriterias.add(new SortCriteria((b) => b..sortByNumeric = -1))),
       new NxDimension((b) => b..def.fieldDefs.add('Dim2'))
    ])
    ..hyperCubeDef
        .measures
        .add(new NxMeasure((b) => b..def.def = '=Sum(Value)'))
    ..hyperCubeDef.initialDataFetch.add(new NxPage((b) => b
      ..height = 5
      ..width = 3)));
  var object = await doc.createObject(properties);
  var layout = await object.getLayout();
  print(layout.hyperCube.dataPages);
  await enigma.close();
}
