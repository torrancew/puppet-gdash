define gdash::dashboard( $name = $title, $description = '' ) {
  Class['gdash::configure'] -> Gdash::Dashboard[$title]

  file {
    "${gdash::configure::template_dir}/${title}":
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => 0755;

    "${gdash::configure::template_dir}/${title}/dash.yaml":
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      content => template( 'gdash/dash.yaml.erb' ),
      require => File["${gdash::configure::template_dir}/${title}"],
  }
}

