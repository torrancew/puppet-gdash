class gdash::configure( $template_dir = '/etc/gdash/dashboards' ) {
  gdash::category { 'servers': }

  Gdash::Category<<||>>
  Gdash::Dashboard<<||>>
  Gdash::Graph<<||>>
  Gdash::Field<<||>>
}

