CONTAINER Prefstake
{
	NAME Prefstake;
	GROUP PREF_TAKE_MAIN_GROUP
	{
    DEFAULT 1;
		COLUMNS 1;

    SEPARATOR PREF_TAKE_BASIC_GROUP { }

    BOOL PREF_TAKE_MAIN_AUTOTAKE { }

    SEPARATOR PREF_TAKE_MANAGER_GROUP { }

//    BOOL PREF_TAKE_MANAGER_SHOWATTRIBUTES { }
//    BOOL PREF_TAKE_MANAGER_SIDEATTIBUTE { }

    LONG PREF_TAKE_MANAGER_TREEMODE
    {
      ANIM OFF;
      CYCLE
      {
        PREF_TAKE_MANAGER_TREEMODE_TAKE;
        PREF_TAKE_MANAGER_TREEMODE_OVER;
        PREF_TAKE_MANAGER_TREEMODE_DUAL;
      }
    }

    SEPARATOR PREF_TAKE_DEFAULT_FILETR_GROUP { }

    BOOL PREF_TAKE_DEFAULT_FILETR_OBJ { }
    BOOL PREF_TAKE_DEFAULT_FILETR_TAG { }
    BOOL PREF_TAKE_DEFAULT_FILETR_MAT { }
    BOOL PREF_TAKE_DEFAULT_FILETR_SHD { }
    BOOL PREF_TAKE_DEFAULT_FILETR_LAY { }
    BOOL PREF_TAKE_DEFAULT_FILETR_OTH { }
    BOOL PREF_TAKE_DEFAULT_FILETR_VIS { }
    BOOL PREF_TAKE_DEFAULT_FILETR_TRN { }
    BOOL PREF_TAKE_DEFAULT_FILETR_PRM { }
    BOOL PREF_TAKE_DEFAULT_FILETR_CAM { }
    BOOL PREF_TAKE_DEFAULT_FILETR_RS { }
	}
}








