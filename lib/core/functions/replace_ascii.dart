replaceAscii(String str) {
  str = str.replaceAll('-', ' ');
  str = str.replaceAll('Ç', 'C');
  str = str.replaceAll('ç', 'c');
  str = str.replaceAll('Ğ', 'G');
  str = str.replaceAll('ğ', 'g');
  str = str.replaceAll('İ', 'I');
  str = str.replaceAll('ı', 'i');
  str = str.replaceAll('Ö', 'O');
  str = str.replaceAll('ö', 'o');
  str = str.replaceAll('Ş', 'S');
  str = str.replaceAll('ş', 's');
  str = str.replaceAll('Ü', 'U');
  str = str.replaceAll('ü', 'u');
  //  print(str);
  return str;
}
