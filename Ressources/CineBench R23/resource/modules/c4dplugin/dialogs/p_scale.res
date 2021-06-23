// C4D-DialogResource

DIALOG P_SCALE
{
  NAME TITLE;

  GROUP
  {
  	SCALE_H;
  	COLUMNS 1;
		STATICTEXT IDP_SCALE_MATERIALNAME { SCALE_H; }
	}
	SEPARATOR { SCALE_H; }

	GROUP
	{
		ROWS 1;
		
		GROUP
		{
			SCALE_H;

			NAME T2;
			COLUMNS 2;
			BORDERSTYLE BORDER_GROUP_IN;
			BORDERSIZE 4,4,4,4;
			
			CHECKBOX IDP_SCALE_C0 { NAME TC0; }
			STATICTEXT IDP_SCALE_S0 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C1 { NAME TC1; }
			STATICTEXT IDP_SCALE_S1 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C2 { NAME TC2; }
			STATICTEXT IDP_SCALE_S2 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C3 { NAME TC3; }
			STATICTEXT IDP_SCALE_S3 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C4 { NAME TC4; }
			STATICTEXT IDP_SCALE_S4 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C5 { NAME TC5; }
			STATICTEXT IDP_SCALE_S5 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C6 { NAME TC6; }
			STATICTEXT IDP_SCALE_S6 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C7 { NAME TC7; }
			STATICTEXT IDP_SCALE_S7 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C8 { NAME TC8; }
			STATICTEXT IDP_SCALE_S8 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C9 { NAME TC9; }
			STATICTEXT IDP_SCALE_S9 { SIZE 100,0; }
			CHECKBOX IDP_SCALE_C10 { NAME TC10; }
			STATICTEXT IDP_SCALE_S10 { SIZE 100,0; }
		}
		
		GROUP
		{
			COLUMNS 1;
			SCALE_V;

			GROUP
			{
				SCALE_H;
				NAME T3;
				COLUMNS 1;
				BORDERSTYLE BORDER_GROUP_IN;
				BORDERSIZE 4,4,4,4;

				GROUP
				{
					COLUMNS 4;
					STATICTEXT { NAME T4; }
					EDITNUMBERARROWS IDP_SCALE_WIDTH { SIZE 80,0; ALIGN_LEFT; }			
					STATICTEXT { NAME T5; }
					EDITNUMBERARROWS IDP_SCALE_HEIGHT { SIZE 80,0; ALIGN_LEFT; }			
				}
				
				CHECKBOX IDP_SCALE_LOCK { CENTER_H; NAME T6; }

				RADIOGROUP IDP_SCALE_TYPE
				{
					GROUP
					{
						COLUMNS 1;
						RADIOGADGET 1 { NAME T7; }
						RADIOGADGET 2 { NAME T8; }
						RADIOGADGET 3 { NAME T9; }
						RADIOGADGET 4 { NAME T10; }
					}
				}
			}

			GROUP
			{
				SCALE_H;
				SCALE_V;
				NAME T11;
				ROWS 1;
				BORDERSTYLE BORDER_GROUP_IN;
				BORDERSIZE 4,4,4,4;

				COMBOBOX IDP_SCALE_SAMPLE
				{
					CHILDS 
					{
						0, T12;
						1, T13;
					}
				}
			}
		}
	}
	
  DLGGROUP { OK;CANCEL;HELP; }
}
