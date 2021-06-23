// C4D-DialogResource
DIALOG DLG_NEWPREFS
{
  NAME IDS_DIALOG1; CENTER_V; CENTER_H; 
  
  GROUP 
  {
    NAME IDS_STATIC3; SCALE_V; SCALE_H; 
    BORDERSIZE 2, 4, 2, 2; 
    COLUMNS 1;
    SPACE 4, 4;
    
    GROUP 
    {
      NAME IDS_STATIC1; SCALE_V; SCALE_H; 
      BORDERSIZE 0, 0, 0, 0; 
      ROWS 1;
      SPACE 4, 4;
      
      GROUP IDC_STATIC1
      {
        NAME IDS_STATIC1; SCALE_V; ALIGN_LEFT; 
        BORDERSIZE 0, 0, 0, 0; 
        COLUMNS 1;
        SPACE 4, 4;
        
        TREEVIEW IDC_NEWPREFS_INCLUDELIST
        {
          SCALE_V; ALIGN_LEFT; SIZE 290, 420; 
          BORDER; 
          NO_MULTISELECT; 
        }
      }
      GROUP IDC_NEWPREFS_DYNAMIC
      {
        NAME IDS_STATIC2; SCALE_V; SCALE_H; SIZE 500, 210; 
        BORDERSIZE 0, 0, 0, 0; 
        COLUMNS 1;
        SPACE 4, 4;
        
        
      }
    }
  }
}