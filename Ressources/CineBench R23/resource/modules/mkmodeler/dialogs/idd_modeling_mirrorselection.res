// C4D-DialogResource
DIALOG IDD_MODELING_MIRRORSELECTION
{
  NAME T1; CENTER_V; CENTER_H;

  GROUP
  {
    COLUMNS 2;
    STATICTEXT { NAME T2; }
    COMBOBOX IDC_MIRRORSELECTION_SPACE { CHILDS { 0,T3; 1,T4; } }

    STATICTEXT { NAME T5; }
    COMBOBOX IDC_MIRRORSELECTION_PLANE { CHILDS { 0,T6; 1,T7; 2,T8; } }

    STATICTEXT { NAME T9; }
    EDITNUMBERARROWS IDC_MIRRORSELECTION_TOLERANCE { SIZE 100, 0; }

    STATICTEXT { NAME T10; }
    COMBOBOX IDC_MIRRORSELECTION_MODE { CHILDS { 1,T11; 2,T12; 0,T13; } }
  }

  STATICTEXT  { CENTER_V; FIT_H; }
  DLGGROUP { OK; CANCEL; HELP; }
}