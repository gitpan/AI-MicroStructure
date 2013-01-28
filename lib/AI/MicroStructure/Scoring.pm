package AI::MicroStructure::Scoring;

use strict;




sub new { 

  my($class) = shift ;
 
  my $self = bless { cache => [] }, $class;
	 
  
  
  
    my ($entropy,$expected,$scale,$scaleval,$database,
		  $lowestscore,$highestscore,$lambda,$H);
    $class->entropy($entropy);
    $class->expected_score($expected);
    $class->scale($scale);
    $class->scale_value($scaleval);
    $class->database ($database);
    $class->lowest_score($lowestscore);
    $class->highest_score($highestscore);
    $class->lambda($lambda);
    $class->H($H);
				    
    return $self;
}

=head2 entropy

 Title   : entropy
 Usage   : $obj->entropy($newval)
 Function: 
 Example : 
 Returns : value of entropy (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub initialize { return @_; }

sub entropy{
    my $self = shift;

    return $self->{'entropy'} = shift if @_;
    return $self->{'entropy'};
}

=head2 expected_score

 Title   : expected_score
 Usage   : $obj->expected_score($newval)
 Function: 
 Example : 
 Returns : value of expected (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub expected_score{
    my $self = shift;

    return $self->{'expected'} = shift if @_;
    return $self->{'expected'};
}

=head2 scale

 Title   : scale
 Usage   : $obj->scale($newval)
 Function: 
 Example : 
 Returns : value of scale (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub scale{
    my $self = shift;

    return $self->{'scale'} = shift if @_;
    return $self->{'scale'};
}

=head2 scale_value

 Title   : scale_value
 Usage   : $obj->scale_value($newval)
 Function: 
 Example : 
 Returns : value of scale_value (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub scale_value{
    my $self = shift;

    return $self->{'scale_value'} = shift if @_;
    return $self->{'scale_value'};
}

=head2 description

 Title   : description
 Usage   : $obj->description($newval)
 Function: 
 Example : 
 Returns : value of description (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub description{
    my $self = shift;

    return $self->{'description'} = shift if @_;
    return $self->{'description'};
}

=head2 database

 Title   : database
 Usage   : $obj->database($newval)
 Function: 
 Example : 
 Returns : value of database (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub database{
    my $self = shift;

    return $self->{'database'} = shift if @_;
    return $self->{'database'};
}

=head2 lowest_score

 Title   : lowest_score
 Usage   : $obj->lowest_score($newval)
 Function: 
 Example : 
 Returns : value of lowest_score (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub lowest_score{
    my $self = shift;

    return $self->{'lowest_score'} = shift if @_;
    return $self->{'lowest_score'};
}

=head2 highest_score

 Title   : highest_score
 Usage   : $obj->highest_score($newval)
 Function: 
 Example : 
 Returns : value of highest_score (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub highest_score{
    my $self = shift;

    return $self->{'highest_score'} = shift if @_;
    return $self->{'highest_score'};
}

=head2 lambda

 Title   : lambda
 Usage   : $obj->lambda($newval)
 Function: 
 Example : 
 Returns : value of lambda (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub lambda{
    my $self = shift;

    return $self->{'lambda'} = shift if @_;
    return $self->{'lambda'};
}

=head2 H

 Title   : H
 Usage   : $obj->H($newval)
 Function: 
 Example : 
 Returns : value of H (a scalar)
 Args    : on set, new value (a scalar or undef, optional)


=cut

sub H{
    my $self = shift;
    return $self->{'H'} = shift if @_;
    return $self->{'H'};
}


1;


