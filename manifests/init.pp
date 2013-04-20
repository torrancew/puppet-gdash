class gdash {
  anchor { 'gdash::begin': } -> class { 'gdash::configure': } -> anchor { 'gdash::end': }

  Gdash::Category<||>
  Gdash::Category<<||>>

  Gdash::Dashboard<<||>>
  Gdash::Graph<<||>>
  Gdash::Field<<||>>
}

