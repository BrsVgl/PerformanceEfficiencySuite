CONTAINER Allplan
{
	NAME Allplan;
	INCLUDE Fbase;

  GROUP ALLPLAN_GROUP
  {
    COLUMNS 1;

    UNITSCALE ALLPLAN_SIZE { }
    
    SEPARATOR {LINE;}

    BOOL ALLPLAN_SELECTED {ANIM OFF; DEFAULT 0;}
    BOOL ALLPLAN_TRI {ANIM OFF; DEFAULT 0;}
    
    SEPARATOR {LINE;}
    
		BOOL ALLPLAN_OTPIMIZE {ANIM OFF; DEFAULT 1;}
		REAL ALLPLAN_OPTIMIZEVALUE { ANIM OFF; MIN 0.0; DEFAULT 0.01;}

		SEPARATOR {LINE;}

    BOOL ALLPLAN_COLLAPSED {ANIM OFF; DEFAULT 1;}
    BOOL ALLPLAN_COLOR {ANIM OFF; DEFAULT 0;}
		BOOL ALLPLAN_KOMPRIMIERT {ANIM OFF; DEFAULT 1;}
    
    BOOL ALLPLAN_INFO {ANIM OFF; DEFAULT 0;}
  }
}