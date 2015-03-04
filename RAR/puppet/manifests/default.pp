# Actualizar los repositorios de paquetes
exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

# Lista de paquetes a instalar
$packages = [
#    "php-apc",
    "make"
]

# Instalación de los paquetes
package { $packages:
    ensure => present,
    require => Exec["apt-get update"],
}

puppi::netinstall { "rar":
  require => Package["make"],
#  url => 'http://rarsoft.com/rar/rarlinux-5.1.1.tar.gz',
#  url => 'http://rarlab.com/rar/rarlinux-5.2.1.tar.gz',
  url => 'http://rarlab.com/rar/rarlinux-x64-5.2.1.tar.gz',
  extracted_dir => 'rar',
  destination_dir => '/tmp',
  postextract_command => 'sudo make && sudo make install'
}

