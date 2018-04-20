/// This code was autogenerated
import 'package:built_value/built_value.dart';


class LineageInfo {
  /// A string indicating the origin of the data:
  /// * [filename]: the data comes from a local file.
  /// * INLINE: the data is entered inline in the load script.
  /// * RESIDENT: the data comes from a resident table. The table name is listed.
  /// * AUTOGENERATE: the data is generated from the load script (no external table of data source).
  /// * Provider: the data comes from a data connection. The connector source name is listed.
  /// * [webfile]: the data comes from a web-based file.
  /// * STORE: path to QVD or TXT file where data is stored.
  /// * EXTENSION: the data comes from a Server Side Extension (SSE).
  /// Original name: qDiscriminator
  String discriminator;
  /// The LOAD and SELECT script statements from the data load script.
  /// Original name: qStatement
  String statement;
}

