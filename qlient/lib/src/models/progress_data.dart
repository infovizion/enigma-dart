/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'progress_message.dart';

class ProgressData {
  /// True if the request is started.
  /// Original name: qStarted
  bool started;
  /// True if the request is finished.
  /// Original name: qFinished
  bool finished;
  /// This property is not used.
  /// Original name: qCompleted
  int completed;
  /// This property is not used.
  /// Original name: qTotal
  int total;
  /// This property is not used.
  /// Original name: qKB
  int kB;
  /// Request duration in milliseconds.
  /// Original name: qMillisecs
  int millisecs;
  /// True when the engine pauses the script execution and waits for a user interaction.
  /// Original name: qUserInteractionWanted
  bool userInteractionWanted;
  /// A progress message is persistent when it informs about the start or end of a statement. For example, it can inform about the total number of lines fetched from a data source or tell that the app was saved. All persistent progress messages between two *GetProgress* calls are summarized in this string. Contrarily to *qPersistentProgressMessages*, the content of the localized message string is displayed (not its message code).
  /// Original name: qPersistentProgress
  String persistentProgress;
  /// A progress message is transient when it informs about the progress of an ongoing statement. For example, it can tell how many lines are currently fetched from a data source. All transient progress messages between two *GetProgress* calls are summarized in this string. Contrarily to *qTransientProgressMessage*, the content of the localized message string is displayed (not its message code).
  /// Original name: qTransientProgress
  String transientProgress;
  /// Information about the error messages that occur during the script execution.
  /// Original name: qErrorData
  List<NxCell> errorData;
  /// List of persistent progress messages.
  /// Original name: qPersistentProgressMessages
  List<NxCell> persistentProgressMessages;
  /// Transient progress message.
  /// Original name: qTransientProgressMessage
  ProgressMessage transientProgressMessage;
}

