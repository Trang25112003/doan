class AppConstant {
  AppConstant._();

  static const baseTodo = 'http://206.189.150.98:3000/api/v1'; //link api
  static baseImage(String path) =>
      'http://206.189.150.98:3000/public/images/$path';

  static const endPointBaseImage = 'http://206.189.150.98:3000/public/images'; //hien thi anh ̣̣̣̣(lay ve) 
  static const endPointUploadFile = '$baseTodo/file/upload'; //duoi cua link api 
}
