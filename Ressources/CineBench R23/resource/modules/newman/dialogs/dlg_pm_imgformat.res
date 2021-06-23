DIALOG DLG_PM_IMGFORMAT
{
    NAME TITLE;
    
    GROUP
    {
          SCALE_H; FIT_H;      
          ROWS 1;
          STATICTEXT { NAME TFILENAME; CENTER_V; ALIGN_LEFT; }
		  EDITTEXT IDC_PM_FILENAME { SCALE_H;  FIT_H; }
		  BUTTON IDC_PM_FILENAMEBUTTON { NAME TDOTS; }
    }
    
    STATICTEXT IDC_PM_REALFILENAME { SCALE_H; FIT_H; }

    GROUP IDC_PM_GETIMAGE_SUB
	{        
		COLUMNS 2;
        BORDERSIZE 4, 4, 4, 4;
		SCALE_H; FIT_H; SCALE_V; FIT_V;    
        BORDERSTYLE BORDER_GROUP_IN;
        NAME TFORMAT;
    
        STATICTEXT { NAME TWIDTH; ALIGN_LEFT; }
          GROUP
          {
              ROWS 1;
            SCALE_H;		  
              EDITNUMBERARROWS IDC_PM_WIDTH { SIZE 80,0; ALIGN_LEFT; }		
              STATICTEXT { NAME THEIGHT; ALIGN_LEFT; }
              EDITNUMBERARROWS IDC_PM_HEIGHT { SIZE 80,0; ALIGN_LEFT; }	
        }

		STATICTEXT { NAME TMODE; }		
		GROUP
		{ 
		  ROWS 1;
		  SCALE_H;
		  
		  COMBOBOX IDC_PM_MODE 
		  {
				  CHILDS 
				  {
						  0, TRGB;
						  1, TGREY;
				  }
		  }

		  COMBOBOX IDC_PM_DEPTH
		  {
				  CHILDS 
				  {
						  0, TDEPTH1;
						  1, TDEPTH2;
						  2, TDEPTH3;
				  }
		  }
		}
	}
}