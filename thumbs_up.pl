  # Usage: /+1
  sub thumbs_up {
    my ($data, $server, $witem) = @_;
    my @thumb = (
        "            _",
        "           /(|",
        "          (  :",
        "         __\\  \\  _____",
        "       (____)  `|",
        "      (____)|   |",
        "       (____).__|",
        "        (___)__.|_____"
    );

    if (!$server || !$server->{connected}) {
      Irssi::print("Not connected to server");
      return;
    }

    if ($witem && ($witem->{type} eq "CHANNEL" || $witem->{type} eq "QUERY")) {
      foreach(@thumb){
        $witem->command("MSG ".$witem->{name}.$_);
      }
    } 
  }

  Irssi::command_bind('+1', 'thumbs_up');
