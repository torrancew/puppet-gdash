define gdash::dashboard( $name = $title, $description = '' ) {
  Class['gdash::configure'] -> Gdash::Dashboard[$title]

  exec {
    "create $title dashboard directory":
      command => "mkdir -p ${gdash::configure::template_dir}/${title}",
      unless  => "test  -d ${gdash::configure::template_dir}/${title}",
  }

  file {
    "${gdash::configure::template_dir}/${title}":
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      require => Exec["create $title dashboard directory"];

    "${gdash::configure::template_dir}/${title}/dash.yaml":
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      content => template( 'gdash/dash.yaml.erb' );
  }
}

