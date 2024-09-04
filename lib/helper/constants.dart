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
  const ResponsiveSizes(this.value);

  final double value;

  mobile(600.0),
  webDesktopTablet(601.0)
}
