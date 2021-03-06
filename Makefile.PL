use inc::Module::Install;

license 'mit';

all_from 'lib/App/perlbrew.pm';

repository 'git://github.com/gugod/App-perlbrew.git';

requires
    'File::Path::Tiny'  => '0.1',
    'Text::Levenshtein' => '0.04',
    'Devel::PatchPerl'  => '0.46',
    'local::lib'        => '1.0';

test_requires
    'Test::Simple'    => '0.98',
    'Test::More'      => '0',
    'Test::Output'    => '0',
    'Test::Exception' => '0',
    'Test::Spec'      => '0',
    'Path::Class'     => '0',
    'IO::All'         => '0',
    'File::Temp'      => '0';

install_script 'bin/perlbrew';

tests 't/*.t';

WriteAll;
