CONTAINER Mshadowcatcher
{
	NAME Mshadowcatcher;

	INCLUDE Mbase;

	GROUP Obaselist
	{
		BOOL MATERIAL_PAGE_PROPERTIES { HIDDEN; PAGE; PARENTMSG SHADOWCATCHER_MATERIALPROPERTIES; }
	}

	GROUP SHADOWCATCHER_MATERIALPROPERTIES
	{
		
		SHADERLINK SHADOWCATCHER_REFLECTION_COLOR { }
		
		
		GROUP SHADOWCATCHER_SHADOWS_GROUP
		{
			DEFAULT 1;
			BOOL SHADOWCATCHER_SHADOWS { }
			REAL SHADOWCATCHER_SHADOW_STRENGTH { UNIT PERCENT; MIN 0; MAX 100; MINSLIDER 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER;  }
			COLOR SHADOWCATCHER_SHADOW_COLOR { }
			BOOL SHADOWCATCHER_SHADOW_LIGHTING { }
		}
		
		GROUP SHADOWCATCHER_REFLECTIONS_GROUP
		{
			DEFAULT 1;
			BOOL SHADOWCATCHER_REFLECTIONS { }
			REAL SHADOWCATCHER_REFLECTIONS_STRENGTH { UNIT PERCENT; MIN 0; MAX 100; MINSLIDER 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER;  }
			SHADERLINK SHADOWCATCHER_REFLECTIONS_MASK { }
		}
	}

	INCLUDE Massign;
	
	INCLUDE Millum;
	GROUP ID_MATERIALGROUP_ILLUMINATION
	{
	}
}
