define gdash::field(
  $scale = 1, $category = 'servers', $dashboard = $hostname,
  $color = undef, $alias = $title, $graph, $data
) {
  Gdash::Graph[$graph] -> Gdash::Field[$title]

  datacat_fragment {
    "${category}_${graph}_${title}":
      target => "${gdash::configure::template_dir}/${category}/${dashboard}/${graph}.graph",
      data   => {
        fields => [{
          name  => $title,
          scale => $scale,
          color => $color,
          alias => $alias,
          data  => $data,
        }],
      },
  }
}

