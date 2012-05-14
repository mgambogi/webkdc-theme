# Perl representation of a WebAuth cred token.
#
# Written by Russ Allbery <rra@stanford.edu>
# Copyright 2012
#     The Board of Trustees of the Leland Stanford Junior University
#
# See LICENSE for licensing terms.

package WebAuth::Token::Cred;

require 5.006;
use strict;
use warnings;

use base qw(WebAuth::Token);

# This version should be increased on any code change to this module.  Always
# use two digits for the minor version with a leading zero if necessary so
# that it will sort properly.
our $VERSION = '1.00';

# Accessor methods.
sub subject    { my $self = shift; $self->_attr ('subject',    @_) }
sub type       { my $self = shift; $self->_attr ('type',       @_) }
sub service    { my $self = shift; $self->_attr ('service',    @_) }
sub data       { my $self = shift; $self->_attr ('data',       @_) }
sub creation   { my $self = shift; $self->_attr ('creation',   @_) }
sub expiration { my $self = shift; $self->_attr ('expiration', @_) }

1;
