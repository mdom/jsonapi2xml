use 5.006;
use strict;
use warnings FATAL => 'all';

use Module::Build;

my $builder = Module::Build->new(
    dist_name         => 'App::jsonapi2xml',
    dist_version_from => 'bin/jsonapi2xml',
    configure_requires => {
        'Module::Build' => '0.4004',
    },
    build_requires => {
        'Mojolicious'  => 0,
        'Scalar::Util' => 0,
        'Data::Plist'  => 0,
    },
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
