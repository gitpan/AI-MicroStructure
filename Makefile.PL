
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "AI::MicroStructure   Creates Concepts for words",
  "AUTHOR" => "santex <santex\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "AI-MicroStructure",
  "EXE_FILES" => [
    "bin/micrownet",
    "bin/micro-ontology",
    "bin/micro-git",
    "bin/micro-wnet",
    "bin/micro-wiki-clean",
    "bin/micro-steemer",
    "bin/micro-dict",
    "bin/websock002.pl",
    "bin/micro-daemon",
    "bin/nav.pl",
    "bin/active-memory.html",
    "bin/micro-wiki",
    "bin/micro-relation",
    "bin/micro-rename",
    "bin/micro",
    "bin/micro-sense"
  ],
  "LICENSE" => "perl",
  "NAME" => "AI::MicroStructure",
  "PREREQ_PM" => {
    "AI::Categorizer" => 0,
    "AI::Categorizer::Document" => 0,
    "AI::Categorizer::KnowledgeSet" => 0,
    "AI::Categorizer::Learner::NaiveBayes" => 0,
    "Algorithm::BaumWelch" => 0,
    "AnyDBM_File" => 0,
    "AnyEvent::Subprocess::Easy" => 0,
    "BerkeleyDB" => 0,
    "Cache::Memcached::Fast" => 0,
    "Carp" => 0,
    "Class::Container" => 0,
    "Config::Auto" => 0,
    "Cwd" => 0,
    "Data::Dumper" => 0,
    "Data::Printer" => 0,
    "Digest::MD5" => 0,
    "Env" => 0,
    "Exporter" => 0,
    "Fcntl" => 0,
    "File::Basename" => 0,
    "File::Glob" => 0,
    "File::Spec" => 0,
    "Getopt::Long" => 0,
    "HTML::SimpleLinkExtor" => 0,
    "HTML::Strip" => 0,
    "HTTP::Request::Common" => 0,
    "IO::Async::Loop" => 0,
    "IO::File" => 0,
    "JSON" => 0,
    "JSON::XS" => 0,
    "LWP::UserAgent" => 0,
    "Lingua::StopWords" => 0,
    "List::Util" => 0,
    "Net::Async::WebSocket::Server" => 0,
    "Parallel::Iterator" => 0,
    "Params::Validate" => 0,
    "Statistics::Basic" => 0,
    "Statistics::Contingency" => 0,
    "Statistics::Descriptive" => 0,
    "Statistics::Distributions::Ancova" => 0,
    "Statistics::MVA::BayesianDiscrimination" => 0,
    "Statistics::MVA::HotellingTwoSample" => 0,
    "Storable" => 0,
    "Storable::CouchDB" => 0,
    "Term::ReadKey" => 0,
    "URI::Escape" => 0,
    "WWW::Wikipedia" => 0,
    "base" => 0,
    "strict" => 0,
    "utf8" => 0,
    "vars" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.014",
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



