bool validate(String password) {
  if (password.length < 6) return false;
  // tasks lưu giá trị kiểm tra lần lược chứa số, ký tự đặc biệt, chữ cái
  var tasks = <bool>[false, false, false];
  for (var element in password.runes) {
    if (element >= 48 && element <= 57) {
      tasks[0] = true;
    } else if ((element >= 65 && element <= 90) ||
        (element >= 97 && element <= 122)) {
      tasks[2] = true;
    } else if (element >= 33 && element <= 126) {
      // 33 là ký tự đặt biệt đầu tiên trong bảng mã ascii các ký tự sau 126 bỏ qua
      tasks[1] = true;
    }
  }
  for (var element in tasks) {
    if (element == false) return false;
  }
  return true;
}
