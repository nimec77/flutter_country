import 'package:elementary/elementary.dart';
import 'package:flutter_country/data/repository/country/country_repository.dart';
import 'package:mocktail/mocktail.dart';

class CountryRepositoryMock extends Mock implements CountryRepository {}

class ErrorHandlerMock extends Mock implements ErrorHandler {}
