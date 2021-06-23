CONTAINER Tpointselection
{
	NAME Tpointselection;
	INCLUDE Texpression;

	GROUP Obaselist
	{
		DEFAULT 1;

		BOOL POINTSELECTIONTAG_ENABLEFIELDS {}

		GROUP
		{
			COLUMNS 3;
			
			BUTTON POINTSELECTIONTAG_COMMAND1 { FIT_H; }
			BUTTON POINTSELECTIONTAG_COMMAND3 { FIT_H; }
			BUTTON POINTSELECTIONTAG_COMMAND5 { FIT_H; }

			BUTTON POINTSELECTIONTAG_COMMAND2 { FIT_H; }
			BUTTON POINTSELECTIONTAG_COMMAND4 { FIT_H; }
			BUTTON POINTSELECTIONTAG_COMMAND6 { FIT_H; }
		}
	}

	GROUP POINTSELECTIONTAG_FIELDGROUP
	{
		FIELD HIDE;
		DEFAULT 1;
		REAL POINTSELECTIONTAG_FIELDTOLERANCE { UNIT PERCENT; ANIM ON; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
		BOOL POINTSELECTIONTAG_DEFORMEDSTATE { ANIM ON; }
		FIELDLIST POINTSELECTIONTAG_FIELDS { NEWLINE; ANIM ON; NOCOLOR; NODIRECTION; NOROTATION; }
	}
}
