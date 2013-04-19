define gdash::graph( $vtitle = '', $description = '', $category = 'servers', $dashboard = $hostname ) {
  Gdash::Dashboard[$dashboard] -> Gdash::Graph[$title]

  datacat {
    "${gdash::configure::template_dir}/${category}/${dashboard}/${title}.graph":
      template => 'gdash/graph.erb',
  }
}

