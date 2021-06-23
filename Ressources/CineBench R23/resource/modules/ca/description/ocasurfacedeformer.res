CONTAINER Ocasurfacedeformer
{
	NAME Ocasurfacedeformer;
	INCLUDE Obase;
	
	GROUP ID_OBJECTPROPERTIES
	{
		GROUP
		{
			COLUMNS 2;
			
			LONG ID_CA_SURFACE_DEFORMER_OBJECT_TYPE
			{
				CYCLE
				{
					ID_CA_SURFACE_DEFORMER_OBJECT_TYPE_PROJECTION;
					ID_CA_SURFACE_DEFORMER_OBJECT_TYPE_MAPPING_UV;
					ID_CA_SURFACE_DEFORMER_OBJECT_TYPE_MAPPING_VU;
				}
			}
			
			LONG ID_CA_SURFACE_DEFORMER_OBJECT_MAP_PLANE
			{
				CYCLE
				{
					ID_CA_SURFACE_DEFORMER_OBJECT_MAP_PLANE_XY;
					ID_CA_SURFACE_DEFORMER_OBJECT_MAP_PLANE_YZ;
					ID_CA_SURFACE_DEFORMER_OBJECT_MAP_PLANE_XZ;
				}
			}
		}
			
		REAL ID_CA_SURFACE_DEFORMER_OBJECT_MAP_U { UNIT PERCENT; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		REAL ID_CA_SURFACE_DEFORMER_OBJECT_MAP_V { UNIT PERCENT; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		
		VECTOR ID_CA_SURFACE_DEFORMER_OBJECT_MAP_SCALE { STEP 0.01; }
		
		GROUP
		{
			COLUMNS 2;
			
			BUTTON ID_CA_SURFACE_DEFORMER_OBJECT_INITIAL { }
			BUTTON ID_CA_SURFACE_DEFORMER_OBJECT_RESTORE { }
		}
		STATICTEXT ID_CA_SURFACE_DEFORMER_OBJECT_MEM { }
		
		REAL ID_CA_SURFACE_DEFORMER_OBJECT_STRENGTH { UNIT PERCENT; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		REAL ID_CA_SURFACE_DEFORMER_OBJECT_OFFSET { UNIT METER; MINSLIDER 0.0; MAXSLIDER 500.0; CUSTOMGUI REALSLIDER; }
		
		BOOL ID_CA_SURFACE_DEFORMER_OBJECT_AREA { }
			
		LINK ID_CA_SURFACE_DEFORMER_OBJECT_CAGE { ACCEPT { Obase; Tuvw; } }
	}
}
