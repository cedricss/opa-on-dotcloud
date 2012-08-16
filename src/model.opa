type page = {
  string path,
  string content,
  int counter
}

database admin {
  page /page[{path}]
}

module Model {

  function get_content(path) {
      /admin/page[{~path}]/counter++;
      /admin/page[{~path}]/content
  }

  function set_content(path, content) {
      /admin/page[{~path}]/content <- content
  }

  function statistics() {
    DbSet.iterator(/admin/page)
  }

}
