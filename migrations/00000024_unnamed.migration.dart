import 'dart:async';

import 'package:aqueduct/aqueduct.dart';

class Migration24 extends Migration {
  @override
  Future upgrade() async {
    database.addColumn(
        "_CustomerRelationship",
        SchemaColumn("date", ManagedPropertyType.datetime,
            isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false, defaultValue: "'2019-06-01 00:26:26.152542'"));
  }

  @override
  Future downgrade() async {}

  @override
  Future seed() async {}
}
