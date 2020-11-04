# VIP Go extension for Chassis
# lint:ignore: no-names_containing_dash-check
class vip_go (
	$config,
	$php = $config[php],
	$path  = '/vagrant/extensions/vip_go',
) {

	if ( ! empty( $config[disabled_extensions] ) and 'chassis/vip_go' in $config[disabled_extensions] ) {
		$file = absent
	} else {
		$file = present
	}
	class {'vip_go::plugins': }
	class {'vip_go::php':
		require => Class['vip_go'],
	}
}
