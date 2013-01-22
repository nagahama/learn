use strict;
use warnings;

my $dataFile = shift;
my %dataCnt;
print $dataFile;

open (my $inf, "<", $dataFile) or die "cannot open!";
while(my $line = readline $inf){
	chomp($line);
	my ($cnt, $dt) = split(/ /, $line );
	$dt =~ s/(T\d{2}):\d{2}/$1/g;
	if ( exists($dataCnt{$dt}) ) {
		$dataCnt{$dt} = $dataCnt{$dt} + $cnt;
	} else {
		$dataCnt{$dt} = $cnt;
	}
}
close $inf;


open(my $out, ">", "out.txt");
while(my ($dt, $cnt) = each(%dataCnt)){
	print $out "$dt\t$cnt\r\n";
}
close $out;
