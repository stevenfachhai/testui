abstract class Usecase<Type, Paramds> {
  Future<Type> call({Paramds params});
}
