our %configuration;
our %parameters;



	#Creating the larger cylinder of the bazooka

	sub buildProto()
	{

		my %detector = init_det();
		$detector{"name"}        = "Cyl1";
		$detector{"mother"}      = "root";
		$detector{"description"} = "large cylinder";
		$detector{"pos"}         = "0*cm 0*cm 0*cm";
		$detector{"rotation"}    = "0*deg 0*deg 0*deg";
		$detector{"color"}       = "ccccdd";
		$detector{"type"}        = "Tube";
		$detector{"dimensions"}  = "0*cm 10.95*cm 70*cm 0*deg 360*deg";
		$detector{"material"}    = "Component";
		#$detector{"style"}    = 1;
		print_det(\%configuration, \%detector);
	

			%detector = init_det();
			$detector{"name"}        = "Cyl2";
			$detector{"mother"}      = "root";
			$detector{"description"} = "small cylinder";
			$detector{"pos"}         = "0*cm 17*cm 40*cm";
	        	$detector{"rotation"}    = "90*deg 0*deg 0*deg";
			$detector{"color"}       = "ccccdd";
			$detector{"type"}        = "Tube";
			$detector{"dimensions"}  = "0*cm 10.95*cm 15*cm 0*deg 360*deg";
			$detector{"material"}    = "Component";
			#$detector{"style"}    = 1;
   			print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "bazooka";
		$detector{"mother"}      = "root";
		$detector{"description"} = "bazooka geo";
		$detector{"pos"}         = "0*cm 0*cm 0*cm";
	        $detector{"rotation"}    = "0*deg 0*deg 0*deg";
		$detector{"color"}       = "ccccdd";
		$detector{"type"}        = "Operation:@ Cyl1 + Cyl2";
		$detector{"material"}    = "Component";
		#$detector{"style"}    = 1;
   		print_det(\%configuration, \%detector);

			 %detector = init_det();
			 $detector{"name"}        = "sub_Cyl1";
			 $detector{"mother"}      = "root";
			 $detector{"description"} = "sub large cylinder";
			 $detector{"pos"}         = "0*cm 0*cm 0*cm";
			 $detector{"rotation"}    = "0*deg 0*deg 0*deg";
			 $detector{"color"}       = "ccccdd";
			 $detector{"type"}        = "Tube";
			 $detector{"dimensions"}  = "0*cm 10.135*cm 71*cm 0*deg 360*deg";
			 $detector{"material"}    = "Component";
			 #$detector{"style"}    = 1;
			 print_det(\%configuration, \%detector);

		 %detector = init_det();
		 $detector{"name"}        = "sub_bazooka";
	         $detector{"mother"}      = "root";
		 $detector{"description"} = "sub bazooka geo";
		 $detector{"pos"}         = "0*cm 0*cm 0*cm";
	         $detector{"rotation"}    = "0*deg 0*deg 0*deg";
		 $detector{"color"}       = "ccccdd";
		 $detector{"type"}        = "Operation:@ sub_Cyl1 + sub_Cyl2";
		 $detector{"material"}    = "Component";
		 print_det(\%configuration, \%detector);
			 
			 %detector = init_det();
			 $detector{"name"}        = "final_bazooka";
			 $detector{"mother"}      = "root";
			 $detector{"description"} = "final bazooka geo";
			 $detector{"pos"}         = "0*cm 0*cm 0*cm";
	        	 $detector{"rotation"}    = "0*deg 0*deg 0*deg";
			 $detector{"color"}       = "ccccdd";
			 $detector{"type"}        = "Operation:@ bazooka - sub_Cyl1"; 
			 $detector{"material"}    = "Component";
			 #$detector{"style"}    = 1;
   			 print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "sub_Cyl2";
		$detector{"mother"}      = "root";
		$detector{"description"} = "sub small cylinder";
		$detector{"pos"}         = "0*cm 17*cm 40*cm";
	        $detector{"rotation"}    = "90*deg 0*deg 0*deg";
		$detector{"color"}       = "ccccdd";
		$detector{"type"}        = "Tube";
		$detector{"dimensions"}  = "0*cm 10.135*cm 15.5*cm 0*deg 360*deg";
		$detector{"material"}    = "Component";
		#$detector{"style"}    = 1;
   		print_det(\%configuration, \%detector);

			 %detector = init_det();
			 $detector{"name"}        = "final_bazooka1";
			 $detector{"mother"}      = "root";
			 $detector{"description"} = "final bazooka geo";
			 $detector{"pos"}         = "0*cm 0*cm 0*cm";
	        	 $detector{"rotation"}    = "0*deg 0*deg 0*deg";
			 $detector{"color"}       = "ccccdd";
			 $detector{"type"}        = "Operation:@ final_bazooka - sub_Cyl2"; 
			 $detector{"material"}    = "pvc";
			 $detector{"style"}    = 1;
   			 print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "window1";
		$detector{"mother"}      = "root";
		$detector{"description"} = "aluminum window at the left end";
		$detector{"pos"}         = "0*cm 0*cm -70*cm";
	        $detector{"rotation"}    = "0*deg 0*deg 0*deg";
		$detector{"color"}       = "ccffff";
		$detector{"type"}        = "Tube"; 
		$detector{"material"}    = "G4_Al";
		$detector{"dimensions"}  = "0*cm 10.95*cm 0.0254*cm 0*deg 360*deg";
		$detector{"style"}    = 1;
   		print_det(\%configuration, \%detector);

			 %detector = init_det();
			 $detector{"name"}        = "window2";
			 $detector{"mother"}      = "root";
			 $detector{"description"} = "aluminum window at the left end";
			 $detector{"pos"}         = "0*cm 0*cm 70*cm";
	        	 $detector{"rotation"}    = "0*deg 0*deg 0*deg";
			 $detector{"color"}       = "ccffff";
			 $detector{"type"}        = "Tube"; 
			 $detector{"material"}    = "G4_Al";
			 $detector{"dimensions"}  = "0*cm 10.95*cm 0.0254*cm 0*deg 360*deg";
			 $detector{"style"}    = 1;
   			 print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "mirror";
		$detector{"mother"}      = "gas";
		$detector{"description"} = "MIRROR";
		$detector{"pos"}         = "0*cm 0*cm 40*cm";
	        $detector{"rotation"}    = "135*deg 0*deg 0*deg";
		$detector{"color"}       = "aaffff";
		$detector{"type"}        = "Box"; 
		$detector{"material"}    = "Air_Opt";
		$detector{"dimensions"}  = "6.5*cm 9.0*cm 0.1*cm";
		$detector{"style"}    = 1;
		$detector{"sensitivity"} = "mirror: ltcc_AlMgF2";
		$detector{"hit_type"}    = "mirror";
   		print_det(\%configuration, \%detector);

			  %detector = init_det();
			  $detector{"name"}        = "pmt1";
		          $detector{"mother"}      = "gas";
			  $detector{"description"} = "PMT1";
			  $detector{"pos"}         = "-2.5*cm 14*cm 42.5*cm";
			  $detector{"rotation"}    = "90*deg 0*deg 0*deg";
			  $detector{"color"}       = "800000";
			  $detector{"type"}        = "Box";
			  $detector{"dimensions"}  = "2.5*cm 2.5*cm 0.2*cm";
			  $detector{"material"}    = "LTCCPMTGlass";
			  $detector{"style"}       = 1;
			  $detector{"sensitivity"} = "ltcc";
			  $detector{"hit_type"}    = "ltcc";
			  $detector{"identifiers"} = "sector manual 1 side manual 1 segment manual 1";
			  print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "pmt2";
		$detector{"mother"}      = "gas";
		$detector{"description"} = "PMT2";
		$detector{"pos"}         = "-2.5*cm 14*cm 37.5*cm";
		$detector{"rotation"}    = "90*deg 0*deg 0*deg";
		$detector{"color"}       = "800000";
		$detector{"type"}        = "Box";
		$detector{"dimensions"}  = "2.5*cm 2.5*cm 0.2*cm";
		$detector{"material"}    = "LTCCPMTGlass";
		$detector{"style"}       = 1;
		$detector{"sensitivity"} = "ltcc";
		$detector{"hit_type"}    = "ltcc";
		$detector{"identifiers"} = "sector manual 1 side manual 2 segment manual 1";
		print_det(\%configuration, \%detector);

			   %detector = init_det();
			   $detector{"name"}        = "pmt3";
			   $detector{"mother"}      = "gas";
			   $detector{"description"} = "PMT3";
			   $detector{"pos"}         = "2.5*cm 14*cm 42.5*cm";
			   $detector{"rotation"}    = "90*deg 0*deg 0*deg";
			   $detector{"color"}       = "800000";
			   $detector{"type"}        = "Box";
			   $detector{"dimensions"}  = "2.5*cm 2.5*cm 0.2*cm";
			   $detector{"material"}    = "LTCCPMTGlass";
			   $detector{"style"}       = 1;
			   $detector{"sensitivity"} = "ltcc";
			   $detector{"hit_type"}    = "ltcc";
			   $detector{"identifiers"} = "sector manual 1 side manual 3 segment manual 1";
			   print_det(\%configuration, \%detector);

		%detector = init_det();
		$detector{"name"}        = "pmt4";
		$detector{"mother"}      = "gas";
		$detector{"description"} = "PMT4";
		$detector{"pos"}         = "2.5*cm 14*cm 37.5*cm";
		$detector{"rotation"}    = "90*deg 0*deg 0*deg";
		$detector{"color"}       = "800000";
		$detector{"type"}        = "Box";
		$detector{"dimensions"}  = "2.5*cm 2.5*cm 0.2*cm";
		$detector{"material"}    = "LTCCPMTGlass";
		$detector{"style"}       = 1;
		$detector{"sensitivity"} = "ltcc";
		$detector{"hit_type"}    = "ltcc";
		$detector{"identifiers"} = "sector manual 1 side manual 4 segment manual 1";
		print_det(\%configuration, \%detector);



			   %detector = init_det();
			   $detector{"name"}        = "gas";
			   $detector{"mother"}      = "root";
			   $detector{"description"} = "GAS";
			   $detector{"pos"}         = "0*cm 0*cm 0*cm";
	        	   $detector{"rotation"}    = "0*deg 0*deg 0*deg";
			   $detector{"color"}       = "ccccdd";
			   $detector{"type"}        = "Operation:@ sub_Cyl1 + sub_Cyl2";
			   $detector{"material"}    = "N2";
			   $detector{"visible"}    = 0;
   			   print_det(\%configuration, \%detector);

			  	

	}


1;
