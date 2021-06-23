// C4D-DialogResource
DIALOG DLG_PM_RENDEREXTERNAL
{
  NAME IDS_IDD_DIALOG; CENTER_V; CENTER_H;

  GROUP IDC_STATIC
  {
    NAME IDS_STATIC13; ALIGN_TOP; FIT_H; SCALE_H;
    BORDERSTYLE BORDER_NONE; BORDERSIZE 0, 0, 0, 0;
    COLUMNS 1;

    GROUP IDC_STATIC
    {
      NAME IDS_STATIC15; ALIGN_TOP; FIT_H; SCALE_H;
      BORDERSTYLE BORDER_NONE; BORDERSIZE 0, 0, 0, 0;
      ROWS 1;

      STATICTEXT IDC_STATIC { NAME IDS_STATIC14; CENTER_V; ALIGN_LEFT; }
      FILENAME IDC_PM_IMAGEFN
      {
        ALIGN_TOP; FIT_H; SCALE_H;
        SAVE;
      }
    }
    GROUP IDC_STATIC
    {
      NAME IDS_STATIC3; ALIGN_TOP; FIT_H; SCALE_H;
      BORDERSTYLE BORDER_NONE; BORDERSIZE 0, 0, 0, 0;
      COLUMNS 2;

    GROUP IDC_STATIC
    {
      NAME IDS_STATIC; ALIGN_TOP; FIT_H; SCALE_H;
      BORDERSTYLE BORDER_GROUP_IN; BORDERSIZE 4, 4, 4, 4;
      COLUMNS 2;

      STATICTEXT IDC_STATIC { NAME IDS_STATIC1; CENTER_V; ALIGN_LEFT; }
      EDITNUMBERARROWS IDC_PM_WIDTH
      { CENTER_V; CENTER_H; SIZE 70, 0; }
      STATICTEXT IDC_STATIC { NAME IDS_STATIC2; CENTER_V; ALIGN_LEFT; }
      EDITNUMBERARROWS IDC_PM_HEIGHT
      { CENTER_V; CENTER_H; SIZE 70, 0; }
    }
    GROUP IDC_STATIC
    {
      NAME IDS_STATIC8; FIT_V; FIT_H; SCALE_H;
      BORDERSTYLE BORDER_GROUP_IN; BORDERSIZE 4, 4, 4, 4;
      COLUMNS 1;

      CHECKBOX IDC_PM_SAVEALPHA { NAME IDS_CHECK; ALIGN_TOP; ALIGN_LEFT;  }
      CHECKBOX IDC_PM_STRAIGHT { NAME IDS_CHECK1; ALIGN_TOP; ALIGN_LEFT;  }
    }
    }
    GROUP IDC_STATIC
    {
      NAME IDS_STATIC4; ALIGN_TOP; FIT_H; SCALE_H;
      BORDERSTYLE BORDER_GROUP_IN; BORDERSIZE 4, 4, 4, 4;
      COLUMNS 2;
      EQUAL_ROWS;

      CHECKBOX IDC_PM_SELECTEDOBJECTS { NAME IDS_CHECK4; ALIGN_TOP; ALIGN_LEFT;  }
      STATICTEXT IDC_STATIC { NAME IDS_STATIC16; CENTER_V; ALIGN_LEFT; }
      CHECKBOX IDC_PM_STARTPS { NAME IDS_CHECK2; CENTER_V; ALIGN_LEFT;  }
      FILENAME IDC_PM_PSPATH
      {
        ALIGN_TOP; FIT_H; SCALE_H; SIZE 450, 0;
      }
      GROUP IDC_STATIC
      {
        NAME IDS_STATIC12; CENTER_V; FIT_H; 
        BORDERSTYLE BORDER_NONE; BORDERSIZE 0, 0, 0, 0; 
        ROWS 1;
        
        CHECKBOX IDC_PM_ANIM { NAME IDS_CHECK3; CENTER_V; ALIGN_LEFT;  }
        STATICTEXT IDC_STATIC { NAME IDS_STATIC17; CENTER_V; FIT_H; SCALE_H; }
        STATICTEXT IDC_STATIC { NAME IDS_STATIC9; CENTER_V; ALIGN_LEFT; }
      }
    GROUP IDC_PM_ANIMGROUP
    {
      NAME IDS_STATIC7; ALIGN_TOP; ALIGN_LEFT;
      BORDERSTYLE BORDER_NONE; BORDERSIZE 0, 0, 0, 0;
      ROWS 1;

      EDITNUMBERARROWS IDC_PM_ANIMFROM
      { CENTER_V; CENTER_H; SIZE 70, 0; }
      STATICTEXT IDC_STATIC { NAME IDS_STATIC10; CENTER_V; ALIGN_LEFT; }
      EDITNUMBERARROWS IDC_PM_ANIMTO
        { CENTER_V; CENTER_H; SIZE 70, 0; }
      }
    }
  }
  DLGGROUP { OK; CANCEL; }
}
