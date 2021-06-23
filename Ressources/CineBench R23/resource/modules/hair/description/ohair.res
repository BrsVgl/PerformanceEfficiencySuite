CONTAINER Ohair
{
	NAME Ohair;
	INCLUDE Obase;
	
	GROUP Obaselist
	{
		SEPARATOR { LINE; }

		PRIORITY HAIRSTYLE_PRIORITY { ANIM OFF; NOCAMERA; }
	}

	GROUP HAIRSTYLE_GROUP_GUIDES
	{
		DEFAULT 1;
	
		LINK HAIRSTYLE_LINK { ACCEPT { Obase; Tpolygonselection; Tedgeselection; Tpointselection; 5682; } }

		GROUP HAIRSTYLE_GROUP_GUIDES_ROOTS
		{
			DEFAULT 1;

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_COUNT { ANIM OFF; MIN 1; }
				LONG HAIRSTYLE_SEGMENTS { ANIM OFF; MIN 1; MAX 1024; }
				
				REAL HAIRSTYLE_LENGTH { FORBID_SCALING; UNIT METER; ANIM OFF; MIN 0.0; }
				STATICTEXT { NEWLINE; }
			}

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_ROOT_PLACEMENT
				{
					ANIM OFF;

					CYCLE
					{
						HAIRSTYLE_ROOT_PLACEMENT_FACE;
						HAIRSTYLE_ROOT_PLACEMENT_AREA;
						HAIRSTYLE_ROOT_PLACEMENT_FACE_CENTER;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX;
						HAIRSTYLE_ROOT_PLACEMENT_EDGE;
						HAIRSTYLE_ROOT_PLACEMENT_UV;
						HAIRSTYLE_ROOT_PLACEMENT_UV_UNIFORM;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX_FREE;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX_RADIAL;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE_UNIFORM;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE_TIP;
						HAIRSTYLE_ROOT_PLACEMENT_SEGMENTS_2D;
						HAIRSTYLE_ROOT_PLACEMENT_SEGMENTS_3D;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_VERTEX;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_LINE;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_GUIDE;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_GUIDE_TIP;
						HAIRSTYLE_ROOT_PLACEMENT_FREE;
					}
				}

				LONG HAIRSTYLE_ROOT_REMAPPING
				{
					ANIM OFF;

					CYCLE
					{
						HAIRSTYLE_ROOT_REMAPPING_NEW;
						HAIRSTYLE_ROOT_REMAPPING_OLD;
						HAIRSTYLE_ROOT_REMAPPING_FREE;
					}
				}
			}

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				REAL HAIRSTYLE_UV_U_SPACING { ANIM OFF; UNIT PERCENT; MIN 0.0; MAX 100.0; }
				REAL HAIRSTYLE_UV_V_SPACING { UNIT PERCENT; MIN 0.0; MAX 100.0; }

				REAL HAIRSTYLE_UV_U_VAR { ANIM OFF; UNIT PERCENT; MIN 0.0; MAX 100.0; }
				REAL HAIRSTYLE_UV_V_VAR { ANIM OFF; UNIT PERCENT; MIN 0.0; MAX 100.0; }
			}
		}

		GROUP HAIRSTYLE_GROUP_GUIDES_GROWTH
		{
			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_GROWTH
				{
					ANIM OFF;

					CYCLE
					{
						HAIRSTYLE_GROWTH_NORMALS;
						HAIRSTYLE_GROWTH_DIRECTION;
						HAIRSTYLE_GROWTH_RANDOM;
					}
				}
				STATICTEXT { NEWLINE; }

				LONG HAIRSTYLE_GROWTH_DIRECTION_TYPE
				{
					ANIM OFF;

					CYCLE
					{
						HAIRSTYLE_GROWTH_DIRECTION_X;
						HAIRSTYLE_GROWTH_DIRECTION_Y;
						HAIRSTYLE_GROWTH_DIRECTION_Z;
					}
				}

				BOOL HAIRSTYLE_GROWTH_DIRECTION_LOCAL { ANIM OFF; }
			}

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_ROOT_MIN_SPACING { ANIM OFF; }
				REAL HAIRSTYLE_ROOT_DISTANCE { ANIM OFF; UNIT METER; MIN 0.0; STEP 0.1; }
			}

			SHADERLINK HAIRSTYLE_ROOT_DENSITY { ANIM OFF; }
			LONG HAIRSTYLE_ROOT_DENSITY_LEVELS { ANIM OFF; MIN 2; MAX 10000; }
		}

		GROUP HAIRSTYLE_GROUP_GUIDES_EDITING
		{
			LINK HAIRSTYLE_POINTS_LINK { ANIM OFF; ACCEPT { 5156; } }

			SEPARATOR { LINE; }

			LONG HAIRSTYLE_SHELL_SEGMENT { ANIM OFF; MIN 0; MAX 1024; }

			SEPARATOR { }

			GROUP
			{
				COLUMNS 3;
				
				BUTTON HAIRSTYLE_STATE_REROOT { }
				BUTTON HAIRSTYLE_STATE_RESET { }
				STATICTEXT { NEWLINE; }

				SEPARATOR { }
				STATICTEXT { NEWLINE; }

				BUTTON HAIRSTYLE_STATE_STORE { }
				BUTTON HAIRSTYLE_STATE_RESTORE { }
				BUTTON HAIRSTYLE_STATE_CLEAR { }
			}
					
			STATICTEXT HAIRSTYLE_STATE_INFO { SCALE_H; }
		}

		GROUP HAIRSTYLE_GROUP_GUIDES_SYMMETRY
		{
			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_SYMMETRY_ENABLE { ANIM OFF; }

				LONG HAIRSTYLE_SYMMETRY_PLANE
				{
					ANIM OFF;

					CYCLE
					{
						HAIRSTYLE_SYMMETRY_PLANE_XY;
						HAIRSTYLE_SYMMETRY_PLANE_YZ;
						HAIRSTYLE_SYMMETRY_PLANE_XZ;
					}
				}

				BOOL HAIRSTYLE_SYMMETRY_EDITOR { ANIM OFF; }
				BOOL HAIRSTYLE_SYMMETRY_ROOT { ANIM OFF; }

				BUTTON HAIRSTYLE_SYMMETRY_EDITABLE { ANIM OFF; }
				STATICTEXT { NEWLINE; }
			}
		}

		SEPARATOR { LINE; }

		GROUP
		{
			COLUMNS 2;

			BOOL HAIRSTYLE_UPDATE_AUTO { ANIM OFF; }
			BUTTON HAIRSTYLE_UPDATE { ANIM OFF; }
		}
	}

	GROUP HAIRSTYLE_GROUP_HAIRS
	{
		GROUP
		{
			COLUMNS 2;

			LONG HAIRSTYLE_HAIR_COUNT { MIN 1; }
			LONG HAIRSTYLE_HAIR_SEGMENTS { MIN 1; MAX 1024; }
		}

		GROUP HAIRSTYLE_GROUP_HAIRS_ROOTS
		{
			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_HAIR_ROOT_PLACEMENT
				{
					CYCLE
					{
						HAIRSTYLE_ROOT_PLACEMENT_AUTO;
						HAIRSTYLE_ROOT_PLACEMENT_FACE;
						HAIRSTYLE_ROOT_PLACEMENT_AREA;
						HAIRSTYLE_ROOT_PLACEMENT_FACE_CENTER;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX;
						HAIRSTYLE_ROOT_PLACEMENT_EDGE;
						HAIRSTYLE_ROOT_PLACEMENT_UV;
						HAIRSTYLE_ROOT_PLACEMENT_UV_UNIFORM;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX_FREE;
						HAIRSTYLE_ROOT_PLACEMENT_VERTEX_RADIAL;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE_UNIFORM;
						HAIRSTYLE_ROOT_PLACEMENT_SPLINE_TIP;
						HAIRSTYLE_ROOT_PLACEMENT_SEGMENTS_2D;
						HAIRSTYLE_ROOT_PLACEMENT_SEGMENTS_3D;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_VERTEX;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_LINE;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_GUIDE;
						HAIRSTYLE_ROOT_PLACEMENT_HAIR_GUIDE_TIP;
						HAIRSTYLE_ROOT_PLACEMENT_ASGUIDES;
					}
				}

				BOOL HAIRSTYLE_ROOTS_ASNORMALS { }
			}

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				REAL HAIRSTYLE_HAIR_UV_U_SPACING { UNIT PERCENT; MIN 0.0; MAX 100.0; }
				REAL HAIRSTYLE_HAIR_UV_V_SPACING { UNIT PERCENT; MIN 0.0; MAX 100.0; }

				REAL HAIRSTYLE_HAIR_UV_U_VAR { UNIT PERCENT; MIN 0.0; MAX 100.0; }
				REAL HAIRSTYLE_HAIR_UV_V_VAR { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			}

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				REAL HAIRSTYLE_ROOT_OFFSET { }
				REAL HAIRSTYLE_ROOT_EXTEND { MIN 0.0; }
			}
		}

		GROUP HAIRSTYLE_GROUP_HAIRS_GROWTH
		{
			BOOL HAIRSTYLE_HAIR_ROOT_NULL_INVALID { }

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_HAIR_ROOT_MIN_SPACING { }
				REAL HAIRSTYLE_HAIR_ROOT_DISTANCE { UNIT METER; MIN 0.0; }
			}

			SEPARATOR { LINE; }

			SHADERLINK HAIRSTYLE_HAIR_ROOT_DENSITY { }
			LONG HAIRSTYLE_HAIR_ROOT_DENSITY_LEVELS { MIN 2; MAX 10000; }

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_HAIR_ROOT_RESTICT { }
				STATICTEXT { NEWLINE; }

				REAL HAIRSTYLE_HAIR_ROOT_RESTRICT_DISTANCE { UNIT METER; MIN 0.0; }
				REAL HAIRSTYLE_HAIR_ROOT_RESTRICT_COUNT { MIN 1; MAX 100; }
			}
		}

		GROUP HAIRSTYLE_GROUP_HAIRS_MULTIPLY
		{
			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_HAIR_ROOT_MULTIPLY { MIN 0; }	
				BOOL HAIRSTYLE_HAIR_ROOT_MULTIPLY_SETROOTS { }

				REAL HAIRSTYLE_HAIR_ROOT_MULTI_ROOT { UNIT METER; MIN 0.0; }
				REAL HAIRSTYLE_HAIR_ROOT_MULTI_TIP { UNIT METER; MIN 0.0; }

				REAL HAIRSTYLE_HAIR_ROOT_MULTI_SCALE { UNIT PERCENT; MIN 0.0; }
				REAL HAIRSTYLE_HAIR_ROOT_MULTI_SCALE_VAR { UNIT PERCENT; MIN 0.0; }
			}

			SPLINE HAIRSTYLE_HAIR_ROOT_MULTI_SPLINE
			{ 
			}
		}

		GROUP HAIRSTYLE_GROUP_HAIRS_INTERPOLATION
		{
			GROUP
			{
				COLUMNS 2;
				
				LONG HAIRSTYLE_INTERPOLATION_TYPE
				{
					CYCLE
					{
						HAIRSTYLE_INTERPOLATION_TYPE_LINEAR;
						HAIRSTYLE_INTERPOLATION_TYPE_SQUARE;
						HAIRSTYLE_INTERPOLATION_TYPE_CUBIC;
						HAIRSTYLE_INTERPOLATION_TYPE_QUARTIC;
					}
				}
				STATICTEXT { NEWLINE; }

				LONG HAIRSTYLE_INTERPOLATION_GUIDES { MIN 1; MAX 1024; }
				REAL HAIRSTYLE_INTERPOLATION_VARIATION { UNIT PERCENT; MIN 0.0; }
			}

			BOOL HAIRSTYLE_INTERPOLATION_CLUMP { }
			
			SPLINE HAIRSTYLE_INTERPOLATION_ATTRACTION
			{ 
			}
		}
	}
	
	GROUP HAIRSTYLE_GROUP_FUR
	{
		HIDDEN;

		GROUP
		{
			COLUMNS 2;

			BOOL HAIRSTYLE_FUR { }
			LONG HAIRSTYLE_FUR_COUNT { MIN 1; }
		}

		GROUP HAIRSTYLE_GROUP_FUR_ADVANCED
		{
			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_FUR_ONLY { }
				STATICTEXT { NEWLINE; }

				BOOL HAIRSTYLE_FUR_SHADOWS { }
				BOOL HAIRSTYLE_FUR_CACHE { }
			}

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;		
				
				REAL HAIRSTYLE_FUR_SCALE { UNIT PERCENT; MIN 0.0; }
				REAL HAIRSTYLE_FUR_SCALE_VAR { UNIT PERCENT; MIN 0.0; }

				REAL HAIRSTYLE_FUR_THICKNESS { UNIT PERCENT; MIN 0.0; }
				REAL HAIRSTYLE_FUR_THICKNESS_VAR { UNIT PERCENT; MIN 0.0; }
			}

			SEPARATOR { LINE; }

			BOOL HAIRSTYLE_FUR_CLUMP { }

			SPLINE HAIRSTYLE_FUR_CLUMP_STRENGTH
			{ 
			}
		}
	}

	GROUP HAIRSTYLE_GROUP_EDITOR
	{
		GROUP HAIRSTYLE_GROUP_EDITOR_PREVIEW
		{
			DEFAULT 1;

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_PREVIEW
				{
					CYCLE
					{
						HAIRSTYLE_PREVIEW_NONE;
						HAIRSTYLE_PREVIEW_LINES;
						HAIRSTYLE_PREVIEW_POLYGONS;
						HAIRSTYLE_PREVIEW_HAIR_LINES;
						HAIRSTYLE_PREVIEW_HAIR_POLYGONS;
					}
				}

				BOOL HAIRSTYLE_PREVIEW_CACHE { }
			}

			SEPARATOR { }

			BOOL HAIRSTYLE_BACKFACING { }
			
			SEPARATOR { }
			
			BOOL HAIRSTYLE_PREVIEW_NO_SHADING { }
			BOOL HAIRSTYLE_PREVIEW_GPU_ENHANCED_SHADING { }
			REAL HAIRSTYLE_PREVIEW_GPU_ENHANCED_SHADING_SPECULAR { UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
			REAL HAIRSTYLE_PREVIEW_GPU_ENHANCED_SHADING_AO { UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
			REAL HAIRSTYLE_PREVIEW_DETAIL { UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
		}

		GROUP HAIRSTYLE_GROUP_EDITOR_GENERATION
		{
			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_EDITOR_GENERATE
				{
					CYCLE
					{
						HAIRSTYLE_EDITOR_GENERATE_NONE;
						HAIRSTYLE_EDITOR_GENERATE_AS_RENDER;
						HAIRSTYLE_EDITOR_GENERATE_POLYGONS_FACING;
						HAIRSTYLE_EDITOR_GENERATE_POLYGONS_TRI;
						HAIRSTYLE_EDITOR_GENERATE_POLYGONS_BOX;
					}
				}

				LONG HAIRSTYLE_LOD_AFFECT
				{
					CYCLE
					{
						HAIRSTYLE_LOD_AFFECT_NONE;
						HAIRSTYLE_LOD_AFFECT_ALL;
						HAIRSTYLE_LOD_AFFECT_COUNT;
						HAIRSTYLE_LOD_AFFECT_SEGMENTS;
					}
				}
			}

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_EDITOR_ASRENDER { }
				STATICTEXT { NEWLINE; }

				LONG HAIRSTYLE_EDITOR_COUNT { MIN 1; }
				LONG HAIRSTYLE_EDITOR_SEGCOUNT { MIN 1; }
			}
		}
	}

	GROUP HAIRSTYLE_GROUP_RENDER
	{
		BOOL HAIRSTYLE_RENDER_HAIR { }

		SEPARATOR { LINE; }

		GROUP
		{
			COLUMNS 2;

			LONG HAIRSTYLE_GENERATE
			{
				CYCLE
				{
					HAIRSTYLE_GENERATE_NONE;
					HAIRSTYLE_GENERATE_SPLINE;
					HAIRSTYLE_GENERATE_POLYGONS_FACING;
					HAIRSTYLE_GENERATE_POLYGONS_TRI;
					HAIRSTYLE_GENERATE_POLYGONS_BOX;
					HAIRSTYLE_GENERATE_POLYGONS_CYLINDER;
					HAIRSTYLE_GENERATE_POLYGONS_INSTANCE;
					HAIRSTYLE_GENERATE_POLYGONS_SWEEP;
				}
			}

			BOOL HAIRSTYLE_GENERATE_PERFRAME { }
		}

		GROUP HAIRSTYLE_GROUP_RENDER_INSTANCES
		{
			LINK HAIRSTYLE_INSTANCE_LINK { ACCEPT { Obase; } }

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_INSTANCE_AXIS
				{
					CYCLE
					{
						HAIRSTYLE_INSTANCE_AXIS_X;
						HAIRSTYLE_INSTANCE_AXIS_Y;
						HAIRSTYLE_INSTANCE_AXIS_Z;
					}
				}

				LONG HAIRSTYLE_INSTANCE_SCALING
				{
					CYCLE
					{
						HAIRSTYLE_INSTANCE_SCALING_UNIFORM;
						HAIRSTYLE_INSTANCE_SCALING_ASPECT;
						HAIRSTYLE_INSTANCE_SCALING_FIT;
					}
				}

				LONG HAIRSTYLE_INSTANCE_DEFORM
				{
					CYCLE
					{
						HAIRSTYLE_INSTANCE_DEFORM_NONE;
						HAIRSTYLE_INSTANCE_DEFORM_BEND;
						HAIRSTYLE_INSTANCE_DEFORM_ALIGN;
					}
				}

				LONG HAIRSTYLE_INSTANCE_HIERARCHY
				{
					CYCLE
					{
						HAIRSTYLE_INSTANCE_HIERARCHY_SINGLE;
						HAIRSTYLE_INSTANCE_HIERARCHY_REPEAT;
						HAIRSTYLE_INSTANCE_HIERARCHY_REPEAT_REVERSE;
						HAIRSTYLE_INSTANCE_HIERARCHY_CYCLE;
						HAIRSTYLE_INSTANCE_HIERARCHY_RANDOM;
					}
				}
			}

			SEPARATOR { }

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_INSTANCE_REPEAT { MIN 1; }
				BOOL HAIRSTYLE_INSTANCE_MATERIALS { }

				REAL HAIRSTYLE_INSTANCE_START { UNIT PERCENT; MIN 0.0; MAX 100.0; }
				REAL HAIRSTYLE_INSTANCE_END { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			}
		}

		GROUP HAIRSTYLE_GROUP_RENDER_ROTATION
		{
			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_ROTATION
				{
					CYCLE
					{
						HAIRSTYLE_ROTATION_FREE;
						HAIRSTYLE_ROTATION_LOOK_X;
						HAIRSTYLE_ROTATION_LOOK_Y;
						HAIRSTYLE_ROTATION_LOOK_Z;
						HAIRSTYLE_ROTATION_LOOK_CAMERA;
						HAIRSTYLE_ROTATION_RANDOM;
						HAIRSTYLE_ROTATION_LOOK_AT;
					}
				}
				STATICTEXT { NEWLINE; }
			
				BOOL HAIRSTYLE_ROTATION_LOCAL { }
				BOOL HAIRSTYLE_ROTATION_INVERT { }
			}
	
			LINK HAIRSTYLE_ROTATION_LINK { ACCEPT { Obase; } }
		}

		GROUP HAIRSTYLE_GROUP_RENDER_ADVANCED
		{
			COLUMNS 2;

			BOOL HAIRSTYLE_SINGLE_OBJECT { }
			STATICTEXT { NEWLINE; }

			BOOL HAIRSTYLE_CAP_START { }
			BOOL HAIRSTYLE_CAP_END { }

			BOOL HAIRSTYLE_SLICES { }

			LONG HAIRSTYLE_SLICE_NORMAL
			{
				CYCLE
				{
					HAIRSTYLE_SLICE_NORMAL_GUIDE;
					HAIRSTYLE_SLICE_NORMAL_CAMERA;
					HAIRSTYLE_SLICE_NORMAL_NORMAL;
				}
			}
		}
	}
	
	GROUP HAIRSTYLE_GROUP_DYNAMICS
	{ 
		GROUP
		{
			COLUMNS 3;

			BOOL HAIRSTYLE_DYNAMICS_ENABLE { }
			BOOL HAIRSTYLE_DYNAMICS_COLLISIONS { }
			BOOL HAIRSTYLE_DYNAMICS_EXTRA_STIFF { ANIM OFF; }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_PROPERTIES
		{
			COLUMNS 2;
				
			REAL HAIRSTYLE_DYNAMICS_RADIUS { MIN 0.0; }
			BOOL HAIRSTYLE_DYNAMICS_FIXED_ROOTS { }

			SEPARATOR { }
			STATICTEXT { NEWLINE; }

			REAL HAIRSTYLE_DYNAMICS_MASS { MIN 0.1; STEP 0.1; }
			REAL HAIRSTYLE_DYNAMICS_DRAG { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			
			REAL HAIRSTYLE_DYNAMICS_ROOT_HOLD   { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			REAL HAIRSTYLE_DYNAMICS_STIFFNESS   { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			
			SEPARATOR { }
			STATICTEXT { NEWLINE; }

			REAL HAIRSTYLE_DYNAMICS_REST_MIX   { UNIT PERCENT; MIN 0.0; MAX 100.0; }
			REAL HAIRSTYLE_DYNAMICS_REST_HOLD   { UNIT PERCENT; MIN 0.0; MAX 100.0; }
		
			REAL HAIRSTYLE_DYNAMICS_ELASTIC_LIMIT { UNIT PERCENT; MIN 0.0; }
			REAL HAIRSTYLE_DYNAMICS_ELASTIC_DEFORM { UNIT PERCENT; MIN 0.0; MAX 100.0; }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_ANIM
		{ 
			GROUP
			{
				COLUMNS 3;

				BOOL HAIRSTYLE_DYNAMICS_AUTOTIME { ANIM OFF; }

				BASETIME HAIRSTYLE_DYNAMICS_START { ANIM OFF; }
				BASETIME HAIRSTYLE_DYNAMICS_STOP  { ANIM OFF; }
			}

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				BUTTON HAIRSTYLE_DYNAMICS_RELAX { }
				LONG HAIRSTYLE_DYNAMICS_FRAMES  { ANIM OFF; MIN 1; }
			}
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_MAPS
		{
			LINK HAIRSTYLE_DYNAMICS_DRAG_LINK { ACCEPT { 1018329; } }
			LINK HAIRSTYLE_DYNAMICS_STIFFNESS_LINK { ACCEPT { 1018329; } }
			LINK HAIRSTYLE_DYNAMICS_REST_HOLD_LINK { ACCEPT { 1018329; } }
			LINK HAIRSTYLE_DYNAMICS_MASS_LINK { ACCEPT { 1018329; } }
			LINK HAIRSTYLE_DYNAMICS_FORCE_LINK { ACCEPT { 1018329; } }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_MODIFIERS
		{
			SPLINE HAIRSTYLE_DYNAMICS_DRAG_SPLINE		{ }
			SPLINE HAIRSTYLE_DYNAMICS_STIFFNESS_SPLINE	{ }
			SPLINE HAIRSTYLE_DYNAMICS_REST_HOLD_SPLINE	{ }
			SPLINE HAIRSTYLE_DYNAMICS_MASS_SPLINE		{ }
			SPLINE HAIRSTYLE_DYNAMICS_FORCE_SPLINE		{ }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_ADVANCED
		{
			LONG HAIRSTYLE_DYNAMICS_APPLY
			{
				ANIM OFF;

				CYCLE
				{
					HAIRSTYLE_DYNAMICS_APPLY_GUIDES;
					HAIRSTYLE_DYNAMICS_APPLY_HAIRS;
				}
			}

			GROUP
			{
				COLUMNS 2;

				BOOL HAIRSTYLE_DYNAMICS_CUSTOM { ANIM OFF; }
				LONG HAIRSTYLE_DYNAMICS_SEGMENTS { ANIM OFF; MIN 1; MAX 1024; }
			}

			SEPARATOR { LINE; }

			GROUP
			{
				COLUMNS 2;

				LONG HAIRSTYLE_DYNAMICS_SUBDIV { ANIM OFF; MIN 1; MAX 10000; }
				LONG HAIRSTYLE_DYNAMICS_ITERATIONS  { MIN 0; MAX 10000; }
			}
		}
	}

	GROUP HAIRSTYLE_GROUP_DYNAMICS_FORCES
	{
		SCALE_V;

		GROUP
		{
			COLUMNS 2;
			
			BOOL HAIRSTYLE_DYNAMICS_FORCES_HAIR { }
			BOOL HAIRSTYLE_DYNAMICS_FORCES_OBJECTS { }

			REAL HAIRSTYLE_DYNAMICS_GRAVITY { STEP 0.1; }
			STATICTEXT { NEWLINE; }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_HAIR_HAIR_FORCES
		{
			GROUP
			{
				COLUMNS 2;

				REAL HAIRSTYLE_DYNAMICS_FORCES_RADIUS { UNIT METER; MIN 0.0; }
				STATICTEXT { NEWLINE; }

				REAL HAIRSTYLE_DYNAMICS_FORCES_STRENGTH { }
				REAL HAIRSTYLE_DYNAMICS_FORCES_MAXSTRENGTH { }
			}

			LONG HAIRSTYLE_DYNAMICS_FORCES_FALLOFF
			{
				CYCLE
				{
					HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_CONSTANT;
					HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_LINEAR;
					HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_SQUARE;
					HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_CUBIC;
					HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_CUSTOM;
				}
			}

			SPLINE HAIRSTYLE_DYNAMICS_FORCES_FALLOFF_SPLINE { }
		}

		GROUP HAIRSTYLE_GROUP_DYNAMICS_OBJECT_FORCES
		{
			DEFAULT 1;
			SCALE_V;

			LONG HAIRSTYLE_DYNAMICS_FORCES_INCEXC
			{
				CYCLE
				{
					HAIRSTYLE_DYNAMICS_FORCES_INCEXC_INCLUDE;
					HAIRSTYLE_DYNAMICS_FORCES_INCEXC_EXCLUDE;
				}
			}

			IN_EXCLUDE  HAIRSTYLE_DYNAMICS_FORCES_INCLUDE
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 1; SCALE_V; 
				ACCEPT { Obase; };
			}
		}
	}

	GROUP HAIRSTYLE_GROUP_DYNAMICS_CACHE
	{
		BOOL HAIRSTYLE_DYNAMICS_CACHE_ENABLE { }

		SEPARATOR { LINE; }

		GROUP
		{
			COLUMNS 2;

			BUTTON HAIRSTYLE_DYNAMICS_CACHE_CALCULATE {  FIT_H; }
			BOOL HAIRSTYLE_DYNAMICS_CACHE_COMPRESSED { ANIM OFF; }				

			BUTTON HAIRSTYLE_DYNAMICS_CACHE_DELETE { FIT_H; }
			STATICTEXT HAIRSTYLE_DYNAMICS_CACHE_INFO2 { SCALE_H; }

			BUTTON HAIRSTYLE_DYNAMICS_CACHE_CACHE_FRAME {  FIT_H; }
			BOOL HAIRSTYLE_DYNAMICS_EDITABLE { }

			BUTTON HAIRSTYLE_DYNAMICS_CACHE_CACHE_LOAD {  FIT_H; }
			STATICTEXT { DUMMY; SCALE_H; }

			BUTTON HAIRSTYLE_DYNAMICS_CACHE_CACHE_SAVE {  FIT_H; }
			STATICTEXT { DUMMY; SCALE_H; }

			SEPARATOR { } STATICTEXT { JOINENDSCALE; }

			LONG HAIRSTYLE_DYNAMICS_CACHE_CACHE_LIMIT { MIN 1; MAX 1000; ANIM OFF; }
			STATICTEXT HAIRSTYLE_DYNAMICS_CACHE_TEXT_LIMIT {}
		}
	}
		
	GROUP HAIRSTYLE_GROUP_PARTINGS
	{
		SCALE_V;

		BOOL HAIRSTYLE_PARTINGS_AUTO { }

		REAL HAIRSTYLE_PARTINGS_DISTANCE { UNIT METER; MIN 0.0; }
		REAL HAIRSTYLE_PARTINGS_ANGLE { UNIT DEGREE; MIN 0.0; }

		SEPARATOR { LINE; }

		IN_EXCLUDE  HAIRSTYLE_PARTINGS_INCLUDE
		{
			NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 1; SCALE_V;
			ACCEPT { 1017746; };
		}
	}

	GROUP HAIRSTYLE_GROUP_CULLING
	{
		GROUP
		{
			COLUMNS 2;

			BOOL HAIRSTYLE_GENERATE_CULL_BACKFACING { }
			BOOL HAIRSTYLE_GENERATE_CULL_OFFSCREEN { }

			BOOL HAIRSTYLE_GENERATE_CULL_DISTANCE { }
			STATICTEXT { NEWLINE; }
		}

		GROUP
		{
			COLUMNS 2;

			REAL HAIRSTYLE_GENERATE_CULL_BACKFACING_FADE { UNIT DEGREE; MIN 0.0; MAX 180.0; }
			REAL HAIRSTYLE_GENERATE_CULL_BACKFACING_FADE_END { UNIT DEGREE; MIN 0.0; MAX 180.0; }
		
			REAL HAIRSTYLE_GENERATE_CULL_DISTANCE_NEARCLIP { UNIT METER; }
			REAL HAIRSTYLE_GENERATE_CULL_DISTANCE_NEARCLIP_FADE { UNIT METER; MIN 0.0; }

			REAL HAIRSTYLE_GENERATE_CULL_DISTANCE_FARCLIP { UNIT METER; }
			REAL HAIRSTYLE_GENERATE_CULL_DISTANCE_FARCLIP_FADE { UNIT METER; MIN 0.0; }

			REAL HAIRSTYLE_GENERATE_CULL_OFFSCREEN_PERCENT { UNIT PERCENT; MIN 0.0; }
			STATICTEXT { NEWLINE; }
		}
	}
	
	GROUP HAIRSTYLE_GROUP_ADVANCED
	{
		LONG HAIRSTYLE_SEED { MIN 0; }
		LONG HAIRSTYLE_ROOTS_GENERATE_ITERATIONS { MIN 1; MAX 10000; }

		SEPARATOR { LINE; }

		BOOL HAIRSTYLE_DEFORMERS_ENABLE { }
		REAL HAIRSTYLE_DEFORMERS_STRENGTH { UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }

		SEPARATOR { LINE; }

		LINK HAIRSTYLE_UV_LINK { ACCEPT { Tbase; } }
	}
}
