define gdash::graph( $name = $title, $vtitle = '', $description = '', $dashboard ) {
  Gdash::Dashboard[$dashboard] -> Gdash::Graph[$title]

  datacat {
    "${gdash::configure::template_dir}/${dashboard}/${title}.graph":
      template => 'gdash/graph.erb',
  }
}

