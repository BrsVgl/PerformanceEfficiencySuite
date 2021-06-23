CONTAINER Otube
{
	NAME Otube;
	INCLUDE Obase;

	GROUP ID_OBJECTPROPERTIES
	{
		REAL PRIM_TUBE_IRAD	   { UNIT METER; MIN 0.0; }
		REAL PRIM_TUBE_ORAD    { UNIT METER; MIN 0.0; }
		LONG PRIM_TUBE_SEG     { MIN 3; MAX 1000; }
	  LONG PRIM_TUBE_CSUB		 { MIN 1; MAX 1000; }
		REAL PRIM_TUBE_HEIGHT  { UNIT METER; MIN 0.0; }
	  LONG PRIM_TUBE_HSUB    { MIN 1; MAX 1000; }
		INCLUDE Oprimitiveaxis;
		SEPARATOR { LINE; }
		BOOL PRIM_TUBE_FILLET			 { }
		LONG PRIM_TUBE_FSUB				 { PARENTID PRIM_TUBE_FILLET; MIN 1; MAX 1000; }
		REAL PRIM_TUBE_FILLET_RADIUS	{ PARENTID PRIM_TUBE_FILLET; MIN 0.0; UNIT METER; }

		BUTTON PRIM_TUBE_SWITCH_TO_UPDATED { } // To update legacy primitives to the new version
	}

	INCLUDE Oprimitiveslice;
}
