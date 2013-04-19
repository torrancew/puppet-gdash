define gdash::graph( $graph_title = $title, $vtitle = '', $description = '', $category = 'servers', $dashboard = $hostname ) {
  Gdash::Dashboard[$dashboard] -> Gdash::Graph[$title]

  $graph_file = "${gdash::configure::template_dir}/${category}/${dashboard}/${title}.graph"

  datacat {
    $graph_file:
      template => 'gdash/graph.erb',
  }

  datacat_fragment {
    "${category}_${title}":
      target => $graph_file,
      data   => {
        vtitle      => $vtitle,
        graph_title => $graph_title,
        description => $description,
      }
  }
}

