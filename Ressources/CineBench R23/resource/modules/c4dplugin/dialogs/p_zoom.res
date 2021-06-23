// C4D-DialogResource

DIALOG P_ZOOM
{
  NAME TITLE;

	GROUP
	{
		ROWS 1;
		
		STATICTEXT { NAME T2; }

		GROUP
		{
			SCALE_V;
			ROWS 1;
			SPACE 1,1;
			EDITNUMBERARROWS IDP_ZOOM_VALUE { SIZE 80,0; ALIGN_LEFT; }			
	
			POPUPBUTTON IDP_ZOOM_POPUP
			{
				SCALE_V;
				CHILDS 
				{
					1, TC0;
					2, TC1;
					3, TC2;
					4, TC3;
					5, TC4;
					6, TC5;
					7, TC6;
					8, TC7;
					9, TC8;
				}
			}
		}
	}
	
  DLGGROUP { OK;CANCEL;HELP; }
}
