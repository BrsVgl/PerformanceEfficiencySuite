CONTAINER Prefsinterface
{
	NAME Prefsinterface;
	
	GROUP PREF_INTERFACE_MAIN_GROUP
	{
		DEFAULT 1;
		COLUMNS 1;
        
            // SEPARATOR PREF_INTERFACE_BASIC {}
            
            GROUP
            {
                DEFAULT 1;
                COLUMNS 2;

                LONG PREF_INTERFACE_LANGUAGE { ANIM OFF; CYCLE {  } }
                STATICTEXT{}
                LONG PREF_INTERFACE_SCHEME { ANIM OFF; CYCLE {  } }
                STATICTEXT{}
                LONG PREF_INTERFACE_NEWFEATUREHIGHLIGHT { ANIM OFF; CYCLE {  } PARENTCOLLAPSE; }
                STATICTEXT{}

                BOOL PREF_INTERFACE_NEWFEATUREHIGHLIGHT_FADE{ PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT;  ANIM OFF; }
                STATICTEXT { PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT; }
                STATICTEXT PREF_INTERFACE_NEWFEATUREHIGHLIGHT_RESET_WARNING { PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT; BORDER; }
                STATICTEXT { JOINENDSCALE; PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT; }
                BUTTON PREF_INTERFACE_NEWFEATUREHIGHLIGHT_RESET { PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT; }
                STATICTEXT { PARENTCOLLAPSE PREF_INTERFACE_NEWFEATUREHIGHLIGHT; }

                SEPARATOR {LINE;}
                STATICTEXT{JOINENDSCALE;}
                
                FONT	PREF_INTERFACE_FONTSTD	{ ANIM OFF; SCALE_H; FONTCHOOSER_ENABLE_SIZE; }
                STATICTEXT{}
                FONT	PREF_INTERFACE_FONTMONO	{ ANIM OFF; SCALE_H; FONTCHOOSER_ENABLE_SIZE; }
                STATICTEXT{}
                // FONT	PREF_INTERFACE_FONTBIG	{ ANIM OFF; SCALE_H; FONTCHOOSER_ENABLE_SIZE; }
                // STATICTEXT{}
                SEPARATOR {LINE;}
                STATICTEXT{JOINENDSCALE;}
            
                BOOL PREF_INTERFACE_MACMENU{ ANIM OFF; }
                STATICTEXT PREF_INTERFACE_MACDUMMY {}
                BOOL PREF_INTERFACE_MENUICONS{ ANIM OFF; }
                STATICTEXT{}
                BOOL PREF_INTERFACE_MENUSCUT{ ANIM OFF; }
                STATICTEXT{}
            
            
				SEPARATOR PREF_INTERFACE_HELP {}
				STATICTEXT{}
        
                BOOL PREF_INTERFACE_BUBBLE	{ ANIM OFF; }
                STATICTEXT{}
                BOOL PREF_INTERFACE_ONLINEHELP	{ ANIM OFF; }
				STATICTEXT{}
                BOOL PREF_INTERFACE_EXTERNALHELP	{ ANIM OFF; }
                STATICTEXT{}
            
				SEPARATOR PREF_INTERFACE_OPTIONS {}
				STATICTEXT{}
        

                LONG PREF_INTERFACE_HIDEFIELDGRAPH
                {
                    ANIM OFF; 
                    CYCLE
                    {
                        PREF_INTERFACE_HIDEFIELDGRAPH_OFF;
                        PREF_INTERFACE_HIDEFIELDGRAPH_ON;
                        PREF_INTERFACE_HIDEFIELDGRAPH_INFIELDS;
                    }
                }
                STATICTEXT{}
                // BOOL PREF_INTERFACE_SIMPLEFIELDUI { ANIM OFF; }
                // STATICTEXT{}

                SEPARATOR {LINE;}
                STATICTEXT{JOINENDSCALE;}

                BOOL PREF_INTERFACE_CENTEROBJECT{ ANIM OFF; }
                STATICTEXT{}
                
                LONG PREF_INTERFACE_INSERTAT 
                { 
                    ANIM OFF; 
                    CYCLE 
                    {  
                        PREF_INTERFACE_I_TOP;
                        PREF_INTERFACE_I_PREV;
                        PREF_INTERFACE_I_NEXT;
                        PREF_INTERFACE_I_PARENT;
                        PREF_INTERFACE_I_CHILD;
                        PREF_INTERFACE_I_ROOT;
                    } 
                }
                STATICTEXT{}
                  
                LONG PREF_INTERFACE_PASTEAT
                { 
                    ANIM OFF; 
                    CYCLE 
                    {  
                        PREF_INTERFACE_I_TOP;
                        PREF_INTERFACE_I_PREV;
                        PREF_INTERFACE_I_NEXT;
                        PREF_INTERFACE_I_PARENT;
                        PREF_INTERFACE_I_CHILD;
                        PREF_INTERFACE_I_ROOT;
                    } 
                }
                STATICTEXT{}

                SEPARATOR {LINE;}
                STATICTEXT{JOINENDSCALE;}
                
                LONG PREF_INTERFACE_AMLIMIT{ ANIM OFF; MIN 10; MAX 100000;}
                STATICTEXT{}

                SEPARATOR {LINE;}
                STATICTEXT{JOINENDSCALE;}

                BOOL	PREF_INTERFACE_SCRIPTWORDWRAP { ANIM OFF; }
                STATICTEXT{}
			}
	}
}
