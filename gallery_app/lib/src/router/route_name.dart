enum AppRouteName{
  home(path: '/'),
  cupertino(path: '/cupertino'),
  typography(path: '/typography'),
  buttonAppBar(path: '/button-app-bar'),
  button(path: '/button'),
  list(path: '/list'),
  card(path: '/card'),
  listTitle(path: '/list-title'),
  alert(path: '/alert'),
  textField(path: '/text-field'),
  rowColumn(path: '/row-column'),
  wrapChip(path: 'wrap-chip'),
  stackAlign(path: 'srack-align');

  final String path;

  const AppRouteName({required this.path});

  
  String get name => path;

  String get subPath {
    if (path == '/') {
      return path;
    }
    return path.replaceFirst('/', '');
  }
}