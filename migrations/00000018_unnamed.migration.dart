import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration18 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_NotificationsBlackList", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false)]));
		database.addColumn("_NotificationsBlackList", SchemaColumn.relationship("business", ManagedPropertyType.bigInteger, relatedTableName: "_Business", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
		database.addColumn("_NotificationsBlackList", SchemaColumn.relationship("user", ManagedPropertyType.bigInteger, relatedTableName: "_User", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    