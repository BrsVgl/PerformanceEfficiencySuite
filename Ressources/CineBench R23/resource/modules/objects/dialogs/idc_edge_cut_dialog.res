// C4D-DialogResource
DIALOG IDC_EDGE_CUT_DIALOG
{
  NAME IDS_DIALOG; CENTER_V; CENTER_H; 
  
  GROUP IDC_STATIC
  {
    NAME IDS_STATIC; ALIGN_TOP; ALIGN_LEFT; 
    BORDERSIZE 0, 0, 0, 0; 
    ROWS 1;
    SPACE 4, 4;
    
    STATICTEXT IDC_STATIC { NAME IDS_STATIC2; CENTER_V; ALIGN_LEFT; }
    EDITNUMBERARROWS IDC_EDGE_CUT_SUBDIV_EDIT
    { CENTER_V; CENTER_H; SIZE 70, 0; }
  }
  CHECKBOX IDC_EDGE_CUT_KEEP_SEL_CHK { NAME IDS_CHECK; ALIGN_TOP; ALIGN_LEFT;  }
  DLGGROUP { OK; CANCEL; }
}