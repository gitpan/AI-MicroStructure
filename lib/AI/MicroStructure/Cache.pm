#!/usr/bin/perl -W
package AI::MicroStructure::Cache;
use strict;
use warnings;
use Getopt::Long;
use Digest::MD5 qw(md5_hex);
use Storable qw(lock_retrieve lock_store);
our $VERSION = '0.011';
sub new {
  my $pkg = shift;
  my $self = bless {}, $pkg;

our %opts = (
            timeout       => -1,
            cache         => -1,
            flush=>0,
            max_cache_age => -1,
            cache_file    => "~/zcall_cache",

           );



GetOptions (\%opts,
            "timeout=i",
            "cache!",
            "flush=i",
            "max_cache_age=i",
            "cache_file=s");


  $self->{cache_file} = $opts{cache_file};
  $self->{cache_file} = $pkg->tildeexp($self->{cache_file});
  $self->{opts} = %opts;
  eval {

  $self->{cache} = lock_retrieve($self->{cache_file});
    if($opts{flush}==1){
      $self->{cache} = {};
      lock_store($self->{cache},$self->{cache_file});
    }
  };
  


  return $self;
}


sub insertCache {

    my $self = shift;  
    my $key = shift;
    
    $self->{"make-time"} = time;
    $self->{"expire"} = $self->{"make-time"}+$self->{opts}{max_cache_age};
    $self->{data} = {} unless(defined($self->{data}));
    $self->{data}->{$key}=$self->{data}->{$key}?++$self->{data}->{$key}:1;
    lock_store($self->{cache},$self->{cache_file});



  $self->insert(@_) if @_;

}

sub tildeexp {
  my $self= shift;
  my $path = shift;
  $path =~ s{^~([^/]*)} {
          $1
                ? (getpwnam($1))[7]
                : ( $ENV{HOME} || $ENV{LOGDIR} || (getpwuid($>))[7])
          }ex;
  return $path;
}

sub store{

  my $self= shift;
  my $cache = shift;

  lock_store($cache,$self->{cache_file});

}

sub members {
  return values %{$_[0]};
}

sub size {
  return scalar keys %{$_[0]};
}

sub insert {
  my $self = shift;
  my $data = shift;

  $self->{cache} = lock_retrieve($self->{cache_file});
  $self->{cache} = $data;

  lock_store($data, $self->{cache_file});

}

sub refetch {
  my ($self, $call) = @_;

  $self->{cache}->{$call}->{data}=time;

  lock_store($self->{cache}, $self->{cache_file});

}

sub check_cache {
  my ($self, $call) = @_;

  $self->{cache} = lock_retrieve($self->{cache_file});

  if(!$self->{cache}->{$call}->{data}){
    return 0;
  }else{
    return 1;
  }
}
sub retrieve { return @_; }
sub includes { exists $_[0]->{ $_[1]->name } }
sub includes_name  { exists $_[0]->{ $_[1] } }



1;
# ABSTRACT: this is part of AI-MicroStructure the cache will be containing micro structure parts in http user session context


=head1 NAME

  AI::MicroStructure::Cache

=head1 DESCRIPTION

  Creates Concepts for words  

=head1 SYNOPSIS    
  
  ~$ micro new world
  
  ~$ micro themes
  
  ~$ micro any 2
  
  ~$ micro drop world
  
  ~$ micro
  
=head1 AUTHOR

  Hagen Geissler <santex@cpan.org>

=head1 COPYRIGHT AND LICENCE

  Hagen Geissler <santex@cpan.org>

=head1 SUPPORT AND DOCUMENTATION

  ☞ [sample using concepts](http://quantup.com)

  ☞ [PDF info on my works](https://github.com/santex)

  
=head1 SEE ALSO

  AI-MicroStructure
  AI-MicroStructure-Cache
  AI-MicroStructure-Deamon
  AI-MicroStructure-Relations
  AI-MicroStructure-Concept
  AI-MicroStructure-Data
  AI-MicroStructure-Driver
  AI-MicroStructure-Plugin-Pdf
  AI-MicroStructure-Plugin-Twitter
  AI-MicroStructure-Plugin-Wiki

  
__END__

__DATA__

