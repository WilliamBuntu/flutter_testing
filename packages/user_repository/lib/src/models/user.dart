
class MyUser {
  // final keywork may couse an  error since he didn't use it, so be ware
  final String userId;
  final String email;
  final String password;
  final String name;
  // final String? imageUrl;
  bool hasActiveCart;
                     
                    MyUser({
                      required this.userId,
                      required this.email,
                      required this.name,
                      required this.password,
                      // this.imageUrl,
                      this.hasActiveCart = false,
                    });

                    static final empty = MyUser(
                      userId: "", 
                      email: "", 
                      name: "",
                      password: "",
                      // imageUrl: "",
                      hasActiveCart: false);

                      MyUserEntity toEntity (){
                        return MyUserEntity(
                          userId: userId,
                          email: email,
                          name: name,
                          password: password,
                          // imageUrl: imageUrl,
                          hasActiveCart: hasActiveCart
                        );
                      }
   static MyUser fromEntity (MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      password: entity.password,
      // imageUrl: entity.imageUrl,
      hasActiveCart: entity.hasActiveCart
    );
   }

   @override
   String toString() {
    return 'MyUser{userId: $userId, email: $email, name: $name, password: $password, hasActiveCart: $hasActiveCart}';
   }
}