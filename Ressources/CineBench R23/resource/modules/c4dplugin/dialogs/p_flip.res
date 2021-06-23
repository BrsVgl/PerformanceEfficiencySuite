// C4D-DialogResource

DIALOG P_FLIP
{
  NAME TITLE;

  GROUP
  {
  	SCALE_H;
  	COLUMNS 1;
		STATICTEXT IDP_FLIP_MATERIALNAME { SCALE_H; }
	}
	SEPARATOR { SCALE_H; }

	GROUP
	{
		COLUMNS 1;
		
		GROUP
		{
			NAME T2;
			SCALE_H;
			BORDERSTYLE BORDER_GROUP_IN;
			BORDERSIZE 4,4,4,4;
			COLUMNS 2;
			
			CHECKBOX IDP_FLIP_C0 { NAME TC0; }
			STATICTEXT IDP_FLIP_S0 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C1 { NAME TC1; }
			STATICTEXT IDP_FLIP_S1 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C2 { NAME TC2; }
			STATICTEXT IDP_FLIP_S2 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C3 { NAME TC3; }
			STATICTEXT IDP_FLIP_S3 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C4 { NAME TC4; }
			STATICTEXT IDP_FLIP_S4 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C5 { NAME TC5; }
			STATICTEXT IDP_FLIP_S5 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C6 { NAME TC6; }
			STATICTEXT IDP_FLIP_S6 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C7 { NAME TC7; }
			STATICTEXT IDP_FLIP_S7 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C8 { NAME TC8; }
			STATICTEXT IDP_FLIP_S8 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C9 { NAME TC9; }
			STATICTEXT IDP_FLIP_S9 { SIZE 100,0; }
			CHECKBOX IDP_FLIP_C10 { NAME TC10; }
			STATICTEXT IDP_FLIP_S10 { SIZE 100,0; }
		}

		CHECKBOX IDP_FLIP_UVW { NAME T3; }
	}
	
  DLGGROUP { OK;CANCEL;HELP; }
}
