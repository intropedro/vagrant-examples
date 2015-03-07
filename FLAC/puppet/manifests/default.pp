# Actualizar los repositorios de paquetes
exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

# Lista de paquetes a instalar
$packages = [
    "cuetools",
    "shntool",
    "flac"
]

# Instalación de los paquetes
package { $packages:
    ensure => present,
    require => Exec["apt-get update"],
}

