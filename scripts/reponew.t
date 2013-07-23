use 5.008;    # Require at least Perl version 5.8
use strict;   # Must declare all variables before using them
use warnings; # Emit helpful warnings
use autodie;  # Fatal exceptions for common unrecoverable errors (e.g. w/open)

# Testing-related modules
use Test::More;                  # provide testing functions (e.g. is, like)
use Test::LongString;            # Compare strings byte by byte
use Data::Section -setup;        # Set up labeled DATA sections
use File::Temp  qw( tempfile );  #
use File::Slurp qw( slurp    );  # Read a file into a string
use File::Path qw( make_path remove_tree);
use Carp        qw( croak    );  # Push blame for errors back to line calling function
use Data::Show;

my $username = $ENV{USER};

{
    my $new_repo_dir = 'testing123456789';
    system("~/bashpack/scripts/reponew $new_repo_dir");

    # Check to see if local directory has been created
    ok( -e $new_repo_dir, 'successfully created new repo directory' );
    remove_temp_dir($new_repo_dir);

    # Check to see if backup directory has been created
    my $repo_of_repos = "/ircf/$username/repos";
    my $backup_repo_dir = "$repo_of_repos/$new_repo_dir.git";
    ok( -e $backup_repo_dir, 'successfully created new repo backup directory' );
    remove_temp_dir($backup_repo_dir);

    # Check that git files exist in local and remote repositories
}


done_testing();
  
sub sref_from {
    my $section = shift;

    #Scalar reference to the section text
    return __PACKAGE__->section_data($section);
}

sub string_from {
    my $section = shift;

    #Get the scalar reference
    my $sref = sref_from($section);

    #Return a string containing the entire section
    return ${$sref};
}

sub fh_from {
    my $section = shift;
    my $sref    = sref_from($section);

    #Create filehandle to the referenced scalar
    open( my $fh, '<', $sref );
    return $fh;
}

sub assign_filename_for {
    my $filename = shift;
    my $section  = shift;

    # Don't overwrite existing file
    croak "'$filename' already exists." if -e $filename;

    my $string   = string_from($section);
    open(my $fh, '>', $filename);
    print {$fh} $string;
    close $fh;
    return;
}

sub filename_for {
    my $section           = shift;
    my ( $fh, $filename ) = tempfile();
    my $string            = string_from($section);
    print {$fh} $string;
    close $fh;
    return $filename;
}

sub temp_filename {
    my ($fh, $filename) = tempfile();
    close $fh;
    return $filename;
}

sub delete_temp_file {
    my $filename  = shift;
    my $delete_ok = unlink $filename;
    ok($delete_ok, "deleted temp file '$filename'");
    return;
}

sub remove_temp_dir {
    my $dirname = shift;
    my $delete_ok = remove_tree($dirname);
    ok($delete_ok, "Deleted temp dir '$dirname'");
}
