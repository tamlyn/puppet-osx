# Public: Sets the icon magnification level
class osx::dock::magnification($size = 128) {
  include osx::dock

  boxen::osx_defaults { 'magnification':
    domain => 'com.apple.dock',
    key    => 'largesize',
    type   => 'float',
    value  => $size,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }
}
