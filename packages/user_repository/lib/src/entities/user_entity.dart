
class MyUserEntity {
  // final keywork may couse an  error since he didn't use it, so be ware
  final String userId;
  final String email;
  // final String password;
  final String name;
  // final String? imageUrl;
  bool hasActiveCart;
                     
                    MyUserEntity({
                      required this.userId,
                      required this.email,
                      required this.name,
                      // required this.password,
                      // this.imageUrl,
                      this.hasActiveCart = false,
                    });

// eeeeeeeeeeee
  /// Converts this [MyUserEntity] to a Firestore document.
  ///
  /// Only the following fields are included in the document:
  ///
  /// - [userId]
  /// - [email]
  /// - [name]
  /// - [hasActiveCart]
      Map<String, Object> toDocument() {
        return {
          'userId': userId,
          'email': email,
          'name': name,
          'hasActiveCart': hasActiveCart,
        };
      }
}