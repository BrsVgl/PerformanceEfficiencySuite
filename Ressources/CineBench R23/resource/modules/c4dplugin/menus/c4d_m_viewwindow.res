// C4D Menu Resource

MENU M_VIEW_WINDOW

{

  SUBMENU IDS_MENU_VIEW

  {

    IDM_UNDO_VIEW;

    IDM_REDO_VIEW;

    SEPARATOR;

    IDM_SHOWSCENEALL;

    IDM_SHOWSCENE;

    IDM_ORIGINALGROESSE;

    SEPARATOR;

    IDM_SHOWSELECTED;

    IDM_SHOWACTIVE;

    SEPARATOR;

    PLUGIN_CMD_1016007;

    PLUGIN_CMD_1016008;

    PLUGIN_CMD_1016009;

    SEPARATOR;

    IDM_NEUZEICHNEN;

    SEPARATOR;

    IDM_SEND_TO_PV;

    IDM_SEND_TO_MBL;

    IDM_RENDERVIEW;

    SEPARATOR;

    SUBMENU IDS_SUBMENU_SPACEMOUSE
    {

      PLUGIN_CMD_1016707;

      SEPARATOR;

      PLUGIN_CMD_1019601;

      PLUGIN_CMD_1016708;

      PLUGIN_CMD_1016709;

      PLUGIN_CMD_1016710;
    }

  }

  SUBMENU IDS_VIEWWINDOW_PROJECTION

  {

  	SUBMENU IDS_EDITOR_NAVMODE

  	{

  		PLUGIN_CMD_440000092;

  		PLUGIN_CMD_440000093;

  		PLUGIN_CMD_440000094;

  		PLUGIN_CMD_440000095;

		PLUGIN_CMD_1034262;

  	}

	SEPARATOR;

	SUBMENU IDS_EDITOR_SCAMS

	{

		IDM_VIEWWIN_CAMERAS;

		SEPARATOR;

		IDM_AKTUTOKAM;

	}

	IDM_EDITTOKAM;

    SEPARATOR;

    IDM_CENTRAL;

    IDM_PARALLEL;

    SEPARATOR;

    IDM_LEFT;

    IDM_RIGHT;

    SEPARATOR;

    IDM_FRONT;

    IDM_BACK;

    SEPARATOR;

    IDM_TOP;

    IDM_BOTTOM;

    SEPARATOR;

    SUBMENU IDS_MENU_AXONOMETRIC

    {

      IDM_ISOMETRIC;

      IDM_DIMETRIC;

      IDM_MILITARY;

      IDM_GENTLEMAN;

      IDM_BIRD;

      IDM_FROG;

    }

  }

  SUBMENU IDS_VIEWWINDOW_DISPLAY

  {

    IDM_A_GOURAUD;

    IDM_A_GOURAUD_WIREISO;

    IDM_A_QUICK;

    IDM_A_QUICK_WIREISO;

    IDM_A_FLATSHADING;

    IDM_A_FLATSHADING_WIREISO;

    IDM_A_HIDDENLINE;

    IDM_A_NOSHADING;

    SEPARATOR;

    IDM_A_WIRE;

    IDM_A_ISOBATH;

    IDM_A_BOX;

    IDM_A_SKELETON;

    SEPARATOR;

    PLUGIN_CMD_200000031;

  }

  SUBMENU IDS_MENU_OPTIONS

  {

    SUBMENU IDS_LOD

    {

      IDM_LOD_LOW;

      IDM_LOD_MEDIUM;

      IDM_LOD_HIGH;

      SEPARATOR;

      IDM_RENDER_LOD;

    }

    SEPARATOR;

    IDM_VIEW_STEREO;

    IDM_A_USELWF;

    SEPARATOR;

    IDM_A_HQ_VIEWPORT;

    IDM_A_HQ_VIEWPORT_NOISES;

    IDM_A_HQ_VIEWPORT_POST_EFFECTS;

    IDM_A_HQ_VIEWPORT_MAGICBULLETLOOKS;

    IDM_A_HQ_VIEWPORT_SHADOWS;

    IDM_A_HQ_VIEWPORT_TRANSP;

    IDM_A_HQ_VIEWPORT_REFLECTIONS;

    IDM_A_HQ_VIEWPORT_SSAO;

    IDM_A_HQ_VIEWPORT_TESSELLATION;

    IDM_A_HQ_VIEWPORT_DEPTHOFFIELD;

    SEPARATOR;

    IDM_A_BACKFACE;

    PLUGIN_CMD_1016179;

    IDM_A_LAYERCOLOR;

    PLUGIN_CMD_440000101;

    PLUGIN_CMD_440000110;

    IDM_A_USETAGS;

    IDM_A_TEXTURES;

    IDM_VIEW_XRAY;

    SEPARATOR;

    SUBMENU IDS_VECTOR_VOLUME_DISPLAY

    {

      IDM_A_VECTORDIRECTION;

      IDM_A_VECTORLENGTH;

    }

    SEPARATOR;

    IDM_DOPTIONEN;

    IDM_DOPTIONEN_SAME_TYPE;

    IDM_DOPTIONEN_ALL;

  }

  SUBMENU IDS_DISPLAYFILTER

  {

    SUBMENU IDS_DISPLAYFILTER_PRESETS 18162

    {
      IDM_DISPLAYFILTER_DEFAULT;
      IDM_DISPLAYFILTER_ALL;
      IDM_DISPLAYFILTER_NONE;
      SEPARATOR;
      IDM_DISPLAYFILTER_PRESET_LOAD;
      SEPARATOR;
      IDM_DISPLAYFILTER_PRESET_SAVE;
    }

    SEPARATOR;

		IDM_DISPLAYFILTER_GEOMETRY_ONLY;

		SEPARATOR;

		IDM_DISPLAYFILTER_NULL;

		IDM_DISPLAYFILTER_POLYGON;

		IDM_DISPLAYFILTER_SPLINE;

		IDM_DISPLAYFILTER_GENERATOR;

		IDM_DISPLAYFILTER_HYPERNURBS;

		IDM_DISPLAYFILTER_DEFORMER;

		IDM_DISPLAYFILTER_CAMERA;

		IDM_DISPLAYFILTER_LIGHT;

		IDM_DISPLAYFILTER_JOINT;

		IDM_DISPLAYFILTER_PARTICLE;

		IDM_DISPLAYFILTER_FIELD;

		IDM_DISPLAYFILTER_HAIR;

		IDM_DISPLAYFILTER_SCENE;

		IDM_DISPLAYFILTER_OTHER;

		SEPARATOR;

		IDM_DISPLAYFILTER_GRID;

		IDM_DISPLAYFILTER_BASEGRID;

		IDM_DISPLAYFILTER_OBJECTHANDLES;

		IDM_DISPLAYFILTER_WORLDAXIS;

		IDM_DISPLAYFILTER_MULTIAXIS;

		IDM_DISPLAYFILTER_HANDLES;

		IDM_DISPLAYFILTER_OBJECTHIGHLIGHTING;

		IDM_DISPLAYFILTER_HIGHLIGHTING;

		IDM_DISPLAYFILTER_SDS;

		IDM_DISPLAYFILTER_SDSCAGE;

		IDM_DISPLAYFILTER_NGONLINES;

		IDM_DISPLAYFILTER_GUIDELINES;

		IDM_DISPLAYFILTER_SHOWPATH;

		IDM_DISPLAYFILTER_ONION;

		IDM_DISPLAYFILTER_HUD;

		IDM_DISPLAYFILTER_HORIZON;

  }

  SUBMENU IDS_EDITOR_CAMERAS

  {

    SUBMENU IDS_VIEWWINDOW_PANELS

    {

      IDM_VIEW_SINGLE;

      SEPARATOR;

      IDM_VIEW_2V;

      IDM_VIEW_2H;

      SEPARATOR;

      IDM_VIEW_2SPLIT_TOP;

      IDM_VIEW_2SPLIT_BOTTOM;

      IDM_VIEW_2SPLIT_LEFT;

      IDM_VIEW_2SPLIT_RIGHT;

      SEPARATOR;

      IDM_VIEW_4T;

      IDM_VIEW_3SPLIT_TOP;

      IDM_VIEW_3SPLIT_BOTTOM;

      IDM_VIEW_3SPLIT_LEFT;

      IDM_VIEW_3SPLIT_RIGHT;

      IDM_VIEW_4H;

      IDM_VIEW_4V;

    }

    IDM_NEWVIEW;

    IDM_VIEWTOGGLE;

    SEPARATOR;

    IDM_VIEW0;

    IDM_VIEW1;

    IDM_VIEW2;

    IDM_VIEW3;

    IDM_VIEW4;

  }

}

