#!/usr/bin/perl -w
use strict;
use warnings;

use lib ("$ENV{GEMC}/api/perl");
use utils;
use parameters;
use geometry;
use hit;
use bank;
use math;
use Math::Trig;
use materials;
use mirrors;



# Help Message
sub help()
{
	print "\n Usage: \n";
	print "   ltcc.pl <configuration filename>\n";
	print "   Will create the ltcc Geometry\n";
	print "   Note: The passport and .visa files must be present if connecting to MYSQL. \n\n";
	exit;
}

# Make sure the argument list is correct
if( scalar @ARGV != 1)
{
	help();
	exit;
}

# Loading configuration file and paramters
our %configuration = load_configuration($ARGV[0]);

# Global pars - these should be read by the load_parameters from file or DB
our %parameters = get_parameters(%configuration);



# banks definitions
require "./bank.pl";

# hits definitions
require "./hit.pl";


require "./bazooka_geo.pl";

require "./materials.pl";

require "./mirrors.pl";


# all the scripts must be run for every configuration
my @allConfs = ("original");

# bank definitions commong to all variations
define_bank();

foreach my $conf ( @allConfs )
{
	$configuration{"variation"} = $conf ;

	

	# hits
	define_hit();

	buildBazooka();

	materials();

	buildMirrorsSurfaces();

	
}


