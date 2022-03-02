import 'package:vup_client/presentation/shared/value_objects/value_object.dart';

abstract class BankSlip extends ValueObject<String> {
  BankSlip(String value) : super(value);
}
