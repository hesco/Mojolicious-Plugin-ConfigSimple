Mojolicious-Plugin-ConfigSimple
===============================

A Mojolicious wrapper around Config::Simple and Config::Simple::Extended

With much appreciation to the helpful folks on the #mojo channel,
especially: sri, batman, marcus, crab and buu; each of whom helped 
walk me back from dead-ends on the way here and apologies to anyone 
I missed in these acknowledgements; I offer for your consideration:

    https://github.com/hesco/Mojolicious-Plugin-ConfigSimple
    http://search.cpan.org/~hesco/Mojolicious-Plugin-ConfigSimple-0.01/ 
        <-- PAUSE coming soon, url unconfirmed, still waiting on the indexer

NAME

    Mojolicious::Plugin::ConfigSimple - Config::Simple::Extended

VERSION

    Version 0.05

    my $version = &Mojolicious::Plugin::ConfigSimple::version; 
        <-- will return the currently installed version numbers 
            for the key dependent modules.

SYNOPSIS

      # Mojolicious
      my $ini = '/etc/myapp/config.ini';
      my ($config, $cfg) = $self->plugin('ConfigSimple' => { config_files => [ $ini ] } );

      # Mojolicious::Lite
      my ($config, $cfg) = $plugin 'ConfigSimple' => { config_file => $ini };

DESCRIPTION

    Mojolicious::Plugin::ConfigSimple is a Mojolicious plugin. It is a very
    simple wrapper around Config::Simple::Extended, which in turn wraps
    Config::Simple. Those two modules fully document their uses and
    interfaces and you are encouraged to review their perldoc to learn more.
    But a quick summary is available below. If you prefer the more idiomatic
    Mojo tradition of an $app->config->{'data_structure'} to the object
    oriented interface provided by the returned $cfg object, say for
    instance to support hypnotoad, then by all means. The non-object data
    structure is returned if invoked in scalar context.

METHODS

    Mojolicious::Plugin::ConfigSimple inherits all methods from
    Mojolicious::Plugin and implements the following new ones.

  register
      $plugin->register(Mojolicious->new, { config_files => [ $ini ] });

    Register plugin in Mojolicious application.

    Once that has been invoked in the ->starter() method of your
    application, you should then be able to invoke all of the methdos of
    Config::Simple and Config::Simple::Extended from anywhere in your
    application to access and manipulate your configuration.

    The plugin's constructor recognized only two keys. It requires one or
    the other, if both are provided, config_file wins. config_file requires
    a scalar value. config_files requires an arrayref value.

    If you pass the wrong data type or fail to pass one of the recognized
    keys, then the plugin dies with an informative error message.

    Try these:

        my $debug = $cfg->param("default.debug");
        my $db_connection_credentials = $cfg->get_block( 'db' );
        my %cfg = $cfg->vars;

    If this plugin is registered in scalar context, it returns
    \%{$cfg->vars}, providing the data structure traditionally provided by
    $app->config in a Mojolicious environment.

SEE ALSO

    Mojolicious, Mojolicious::Guides, <http://mojolicio.us>.

AUTHOR & COPYRIGHT

    Copyright 2013-2015
    Hugh Esco <hesco@campaignfoundations.com>
    Released under the Gnu Public License v2, copy included

