# == Class: python::params
#
# The python Module default configuration settings.
#
class python::params {
  $ensure                 = 'present'
  $ensure_scl_utils       = 'latest' # Only installed with scl
  $local_scl_repo         = false
  $version                = 'system'
  $pip                    = 'present'
  $dev                    = 'absent'
  $setuptools             = 'present'
  $virtualenv             = 'absent'
  $gunicorn               = 'absent'
  $manage_gunicorn        = true
  $provider               = undef
  $valid_versions = $::osfamily ? {
    'RedHat' => ['3', '27'],
    'Debian' => ['3', '3.3', '2.7'],
    'Suse'   => [],
  }
  $use_epel               = true
}
