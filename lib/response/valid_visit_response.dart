import 'package:carl_api/carl_api.dart';
import 'package:carl_api/model/visit.dart';

class ValidVisitResponse implements Serializable {
  ValidVisitResponse(this.userVisitsCount, this.businessVisitsMax, this.createdVisit);

  final int userVisitsCount;
  final int businessVisitsMax;
  final Visit createdVisit;

  @override
  Map<String, dynamic> asMap() {
    final map = {
      "userVisitsCount": userVisitsCount,
      "businessVisitsMax": businessVisitsMax,
      "createdVisit": createdVisit.asMap(),
    };

    return map;
  }

  @override
  APISchemaObject documentSchema(APIDocumentContext context) {
    // TODO: implement documentSchema
    return null;
  }

  @override
  void read(Map<String, dynamic> object, {Iterable<String> ignore, Iterable<String> reject, Iterable<String> require}) {
    // TODO: implement read
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }
}
