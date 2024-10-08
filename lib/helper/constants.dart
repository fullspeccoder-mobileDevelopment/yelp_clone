enum DatabaseCollections {
  users,
  usersData,
  reviews,
}

enum MenuItems {
  add,
  signout,
}

enum MenuItemsPhoto {
  camera,
  gallery,
}

enum ReviewMode {
  add,
  edit,
  readOnly,
}

enum Affordability {
  $,
  $$,
  $$$,
  $$$$,
}

//ResponsiveSizes.movile.value -> 600.0
enum ResponsiveSizes {
  mobile(600.0),
  webDesktopTablet(601.0);

  const ResponsiveSizes(this.value);

  final double value;
}
