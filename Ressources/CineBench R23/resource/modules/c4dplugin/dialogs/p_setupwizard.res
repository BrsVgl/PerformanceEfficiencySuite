// C4D-DialogResource
DIALOG P_SETUPWIZARD
{
  NAME IDS_DIALOG; CENTER_V; CENTER_H; 
  
  GROUP IDC_STATIC
  {
    NAME IDS_STATIC; FIT_V; SCALE_V; FIT_H; SCALE_H; 
    BORDERSIZE 4, 4, 4, 4; 
    COLUMNS 1;
    SPACE 4, 4;
    
    GROUP IDC_STATIC
    {
      NAME IDS_STATIC1; FIT_V; SCALE_V; FIT_H; SCALE_H; 
      BORDERSIZE 0, 0, 0, 0; 
      COLUMNS 1;
      SPACE 4, 4;
      
      TAB IDC_SW_TABGROUP
      {
        NAME IDS_STATIC7; FIT_V; SCALE_V; FIT_H; SCALE_H; 
        SELECTION_NONE; 
        
        GROUP IDC_TAB_SELECT_OBJECTS
        {
          NAME IDS_STATIC6; FIT_V; SCALE_V; FIT_H; SCALE_H; 
          BORDERSIZE 0, 0, 0, 0; 
          COLUMNS 1;
          SPACE 4, 4;
          
          STATICTEXT IDC_STATIC { NAME IDS_STATIC4; CENTER_V; ALIGN_LEFT; }
          STATICTEXT IDC_STATIC { NAME IDS_STATIC5; CENTER_V; ALIGN_LEFT; SIZE 0, 2; }
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC9; ALIGN_TOP; FIT_H; SCALE_H; 
            BORDERSIZE 0, 0, 0, 0; 
            ROWS 1;
            SPACE 4, 4;
            
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC3; ALIGN_TOP; ALIGN_LEFT; 
              BORDERSIZE 0, 0, 0, 0; 
              COLUMNS 1;
              SPACE 4, 4;
              
              RADIOGADGET IDC_SW_OBJECTS { NAME IDS_RADIO; ALIGN_TOP; ALIGN_LEFT;  }
              RADIOGADGET IDC_SW_MATERIALS { NAME IDS_RADIO1; ALIGN_TOP; ALIGN_LEFT;  }
            }
            STATICTEXT IDC_STATIC { NAME IDS_STATIC11; CENTER_V; FIT_H; SCALE_H; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC10; ALIGN_BOTTOM; ALIGN_LEFT; 
              BORDERSIZE 0, 0, 0, 0; 
              COLUMNS 2;
              EQUAL_COLS; 
              SPACE 4, 4;
              
              BUTTON IDC_SW_SELECTALL { NAME IDS_BUTTON2; ALIGN_TOP; FIT_H; SCALE_H; }
              BUTTON IDC_SW_DESELECTALL { NAME IDS_BUTTON3; ALIGN_TOP; FIT_H; SCALE_H; }
            }
          }
          TREEVIEW IDC_SW_OBJECTLIST
          {
            FIT_V; SCALE_V; FIT_H; SCALE_H; 
            BORDER; 
          }
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC48; ALIGN_TOP; FIT_H; SCALE_H; 
            BORDERSIZE 0, 0, 0, 0; 
            COLUMNS 1;
            SPACE 4, 4;
            
            SEPARATOR { SCALE_H; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC2; ALIGN_TOP; FIT_H; SCALE_H; 
              BORDERSIZE 0, 0, 0, 0; 
              ROWS 1;
              EQUAL_ROWS; 
              SPACE 4, 4;
              
              STATICTEXT IDC_STATIC { NAME IDS_STATIC51; CENTER_V; FIT_H; SCALE_H; }
              STATICTEXT IDC_STATIC { NAME IDS_STATIC68; CENTER_V; ALIGN_LEFT; }
              STATICTEXT IDC_SW_SELECTED { NAME IDS_STATIC69; CENTER_V; ALIGN_LEFT; }
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC50; ALIGN_TOP; ALIGN_RIGHT; 
                BORDERSIZE 0, 0, 0, 0; 
                ROWS 1;
                EQUAL_COLS; 
                SPACE 4, 4;
                
                BUTTON IDC_SW_NEXT { NAME IDS_BUTTON1; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
              }
            }
          }
        }
        GROUP IDC_TAB_UVSETUP
        {
          NAME IDS_STATIC28; FIT_V; SCALE_V; FIT_H; SCALE_H; 
          BORDERSIZE 0, 0, 0, 0; 
          COLUMNS 1;
          SPACE 4, 4;
          
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC29; FIT_V; SCALE_V; ALIGN_LEFT; 
            BORDERSIZE 0, 0, 0, 0; 
            COLUMNS 1;
            SPACE 4, 4;
            
            STATICTEXT IDC_STATIC { NAME IDS_STATIC30; CENTER_V; ALIGN_LEFT; }
            STATICTEXT IDC_STATIC { NAME IDS_STATIC31; CENTER_V; ALIGN_LEFT; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC32; ALIGN_TOP; ALIGN_LEFT; 
              BORDERSIZE 0, 0, 0, 0; 
              ROWS 1;
              SPACE 4, 4;
              
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC33; ALIGN_TOP; ALIGN_LEFT; 
                BORDERSIZE 0, 0, 0, 0; 
                COLUMNS 2;
                SPACE 10, 6;
                
                CHECKBOX IDC_SW_UV_RECALC { NAME IDS_CHECK29; ALIGN_TOP; ALIGN_LEFT;  }
                GROUP IDC_STATIC
                {
                  NAME IDS_STATIC75; ALIGN_TOP; ALIGN_LEFT; 
                  BORDERSIZE 0, 0, 0, 0; 
                  COLUMNS 1;
                  SPACE 4, 4;
                  
                  GROUP IDC_STATIC
                  {
                    NAME IDS_STATIC44; ALIGN_TOP; ALIGN_LEFT; 
                    BORDERSIZE 0, 0, 0, 0; 
                    COLUMNS 1;
                    SPACE 4, 4;
                    
                    RADIOGADGET IDC_SW_UV_AUTOMATICPACKEDUV { NAME IDS_RADIO8; ALIGN_TOP; ALIGN_LEFT; }
                    RADIOGADGET IDC_SW_UV_OPTIMALCUBICMAPPING { NAME IDS_RADIO3; ALIGN_TOP; ALIGN_LEFT;  }
                    RADIOGADGET IDC_SW_UV_OPTIMALMAPPING { NAME IDS_RADIO2; ALIGN_TOP; ALIGN_LEFT;  }
                    RADIOGADGET IDC_SW_UV_REALIGN { NAME IDS_RADIO4; ALIGN_TOP; ALIGN_LEFT;  }
                  }
                  GROUP IDC_STATIC
                  {
                    NAME IDS_STATIC76; ALIGN_TOP; ALIGN_LEFT; 
                    BORDERSIZE 0, 0, 0, 0; 
                    COLUMNS 2;
                    SPACE 4, 4;
                    
                    STATICTEXT IDC_STATIC { NAME IDS_STATIC77; CENTER_V; ALIGN_LEFT; }
                    EDITNUMBERARROWS IDC_SW_UV_RELAXATION
                    { CENTER_V; CENTER_H; SIZE 70, 0; }
                  }
                  GROUP IDC_STATIC
                  {
                    NAME IDS_STATIC78; ALIGN_TOP; ALIGN_LEFT; 
                    BORDERSIZE 0, 0, 0, 0; 
                    COLUMNS 1;
                    SPACE 4, 4;
                    CHECKBOX IDC_SW_UV_AUTOMATICPACKEDUV_OVERLAPIDENTICAL { NAME IDS_CHECK35; ALIGN_TOP; ALIGN_LEFT;  }
                    CHECKBOX IDC_SW_UV_AUTOMATICPACKEDUV_OVERLAPMIRRORED { NAME IDS_CHECK36; ALIGN_TOP; ALIGN_LEFT;  }
                  }
                }
                CHECKBOX IDC_SW_UV_ONE_MATERIAL { NAME IDS_CHECK34; ALIGN_TOP; ALIGN_LEFT;  }
                STATICTEXT IDC_STATIC { NAME IDS_STATIC67; CENTER_V; ALIGN_LEFT; }
              }
            }
          }
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC52; ALIGN_TOP; FIT_H; SCALE_H; 
            BORDERSIZE 0, 0, 0, 0; 
            COLUMNS 1;
            SPACE 4, 4;
            
            SEPARATOR { SCALE_H; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC53; ALIGN_TOP; FIT_H; SCALE_H; 
              BORDERSIZE 0, 0, 0, 0; 
              ROWS 1;
              EQUAL_COLS; 
              SPACE 4, 4;
              
              STATICTEXT IDC_STATIC { NAME IDS_STATIC54; CENTER_V; FIT_H; SCALE_H; }
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC55; ALIGN_TOP; ALIGN_RIGHT; 
                BORDERSIZE 0, 0, 0, 0; 
                ROWS 1;
                EQUAL_COLS; 
                SPACE 4, 4;
                
                BUTTON IDC_SW_UV_PREVIOUS { NAME IDS_BUTTON4; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
                BUTTON IDC_SW_UV_NEXT { NAME IDS_BUTTON5; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
              }
            }
          }
        }
        GROUP IDC_TAB_MATERIALSETUP
        {
          NAME IDS_STATIC8; FIT_V; SCALE_V; FIT_H; SCALE_H; 
          BORDERSIZE 0, 0, 0, 0; 
          COLUMNS 1;
          SPACE 4, 4;
          
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC14; FIT_V; SCALE_V; FIT_H; SCALE_H; 
            BORDERSIZE 0, 0, 0, 0; 
            COLUMNS 1;
            SPACE 4, 4;
            
            STATICTEXT IDC_STATIC { NAME IDS_STATIC12; CENTER_V; ALIGN_LEFT; }
            STATICTEXT IDC_STATIC { NAME IDS_STATIC13; CENTER_V; ALIGN_LEFT; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC16; ALIGN_TOP; ALIGN_LEFT; 
              BORDERSIZE 0, 0, 0, 0; 
              COLUMNS 4;
              SPACE 4, 4;
              
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC66; ALIGN_TOP; ALIGN_LEFT; 
                BORDERSIZE 0, 0, 0, 0; 
                COLUMNS 1;
                SPACE 4, 4;
                
                CHECKBOX IDC_SW_MAT_CREATE_MISSING_MATERIALS { NAME IDS_CHECK; ALIGN_TOP; ALIGN_LEFT;  }
                CHECKBOX IDC_SW_MAT_CREATE_MISSING_CHANNELS { NAME IDS_CHECK1; ALIGN_TOP; ALIGN_LEFT;  }
                GROUP IDC_STATIC
                {
                  NAME IDS_STATIC17; FIT_V; FIT_H; 
                  BORDERSIZE 16, 0, 0, 0; 
                  COLUMNS 2;
                  SPACE 4, 2;
                  
                  CHECKBOX IDC_SW_MAT_COLOR { NAME IDS_CHECK4; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_COLOR_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_DIFFUSION { NAME IDS_CHECK5; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_DIFFUSION_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_LUMINANCE { NAME IDS_CHECK6; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_LUMINANCE_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_TRANSPARENCY { NAME IDS_CHECK7; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_TRANSPARENCY_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_REFLECTION { NAME IDS_CHECK8; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_REFLECTION_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_ENVIRONMENT { NAME IDS_CHECK9; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_ENVIRONMENT_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_BUMP { NAME IDS_CHECK10; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_BUMP_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_ALPHA { NAME IDS_CHECK11; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_ALPHA_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_DISPLACEMENT { NAME IDS_CHECK13; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_DISPLACEMENT_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                  CHECKBOX IDC_SW_MAT_NORMAL { NAME IDS_CHECK00; ALIGN_TOP; ALIGN_LEFT;  }
                  COLORFIELD IDC_SW_MAT_NORMAL_C { FIT_V; ALIGN_LEFT; NOBRIGHTNESS; NOCOLOR; }
                }
              }
              SEPARATOR { SCALE_V; }
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC65; ALIGN_TOP; ALIGN_LEFT; 
                BORDERSIZE 0, 0, 0, 0; 
                COLUMNS 1;
                SPACE 4, 4;
                
                CHECKBOX IDC_SW_MAT_RESCALE_EXISTING { NAME IDS_CHECK30; ALIGN_TOP; ALIGN_LEFT;  }
                GROUP IDC_STATIC
                {
                  NAME IDS_STATIC62; ALIGN_TOP; ALIGN_LEFT; 
                  BORDERSIZE 0, 0, 0, 0; 
                  COLUMNS 1;
                  SPACE 10, 6;
                  
                  CHECKBOX IDC_SW_MAT_AUTOMATIC_MAPSIZE { NAME IDS_CHECK3; ALIGN_TOP; ALIGN_LEFT;  }
                }
                GROUP IDC_STATIC
                {
                  NAME IDS_STATIC19; ALIGN_TOP; FIT_H; 
                  BORDERSTYLE BORDER_GROUP_TOP; BORDERSIZE 4, 4, 4, 4; 
                  COLUMNS 3;
                  SPACE 3, 2;
                  
                  TAB IDC_TEXTURETAB
                  {
                    NAME IDS_STATIC70; ALIGN_TOP; ALIGN_LEFT; 
                    SELECTION_NONE; 
                    
                    GROUP IDC_SW_MAT_AMSI
                    {
                      NAME IDS_STATIC71; ALIGN_TOP; ALIGN_LEFT; 
                      BORDERSIZE 0, 0, 0, 0; 
                      COLUMNS 2;
                      SPACE 4, 4;
                      
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC73; CENTER_V; ALIGN_LEFT; }
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC74; CENTER_V; ALIGN_LEFT; }
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC22; CENTER_V; ALIGN_LEFT; }
                      EDITNUMBERARROWS IDC_SW_MAT_AMSI_MIN
                      { CENTER_V; ALIGN_LEFT; SIZE 70, 12; }
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC23; CENTER_V; ALIGN_LEFT; }
                      EDITNUMBERARROWS IDC_SW_MAT_AMSI_MAX
                      { CENTER_V; ALIGN_LEFT; SIZE 70, 12; }
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC25; CENTER_V; ALIGN_LEFT; }
                      EDITNUMBERARROWS IDC_SW_MAT_QUANTIZE
                      { CENTER_V; ALIGN_LEFT; SIZE 70, 12; }
                    }
                    GROUP IDC_SW_MAT_TEX
                    {
                      NAME IDS_STATIC72; ALIGN_TOP; ALIGN_LEFT; 
                      BORDERSIZE 0, 0, 0, 0; 
                      COLUMNS 2;
                      SPACE 4, 4;
                      
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC20; CENTER_V; ALIGN_LEFT; }
                      EDITNUMBERARROWS IDC_SW_MAT_TEX_WIDTH
                      { CENTER_V; CENTER_H; SIZE 70, 12; }
                      STATICTEXT IDC_STATIC { NAME IDS_STATIC24; CENTER_V; ALIGN_LEFT; }
                      EDITNUMBERARROWS IDC_SW_MAT_TEX_HEIGHT
                      { CENTER_V; CENTER_H; SIZE 70, 12; }
                    }
                  }
                }
              }
            }
          }
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC56; ALIGN_TOP; FIT_H; SCALE_H; 
            BORDERSIZE 0, 0, 0, 0; 
            COLUMNS 1;
            SPACE 4, 4;
            
            SEPARATOR { SCALE_H; }
            GROUP IDC_STATIC
            {
              NAME IDS_STATIC57; ALIGN_TOP; FIT_H; SCALE_H; 
              BORDERSIZE 0, 0, 0, 0; 
              ROWS 1;
              EQUAL_ROWS; 
              SPACE 4, 4;
              
              STATICTEXT IDC_STATIC { NAME IDS_STATIC58; CENTER_V; FIT_H; SCALE_H; }
              GROUP IDC_STATIC
              {
                NAME IDS_STATIC59; ALIGN_TOP; ALIGN_RIGHT; 
                BORDERSIZE 0, 0, 0, 0; 
                ROWS 1;
                EQUAL_COLS; 
                SPACE 4, 4;
                
                BUTTON IDC_SW_MAT_PREVIOUS { NAME IDS_BUTTON6; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
                BUTTON IDC_SW_MAT_NEXT { NAME IDS_BUTTON7; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
              }
            }
          }
        }
        GROUP IDC_TAB_FINISH
        {
          NAME IDS_STATIC60; FIT_V; SCALE_V; FIT_H; SCALE_H; 
          BORDERSIZE 0, 0, 0, 0; 
          COLUMNS 1;
          SPACE 4, 4;
          
          MULTILINEEDIT IDC_SW_FINISH_LOG { SCALE_H; SCALE_V; SIZE 70, 0; }
          SEPARATOR { SCALE_H; }
          GROUP IDC_STATIC
          {
            NAME IDS_STATIC61; ALIGN_TOP; ALIGN_RIGHT; 
            BORDERSIZE 0, 0, 0, 0; 
            ROWS 1;
            EQUAL_COLS; 
            SPACE 4, 4;
            
            BUTTON IDC_SW_FINISH_PREV { NAME IDS_BUTTON10; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
            BUTTON IDC_SW_FINISH_CLOSE { NAME IDS_BUTTON8; ALIGN_TOP; FIT_H; SCALE_H; SIZE 0, 16; }
          }
        }
      }
    }
  }
}
