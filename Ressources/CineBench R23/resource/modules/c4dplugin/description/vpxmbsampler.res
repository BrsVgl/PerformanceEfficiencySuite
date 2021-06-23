CONTAINER VPxmbsampler
{
	NAME VPxmbsampler;
	INCLUDE VPbase;

	GROUP ID_VIDEOPOSTPROPERTIES
	{
		DEFAULT 1;
		COLUMNS 3;
		SCALE_V;

  	BOOL VP_XMB_DOF						{ ANIM OFF; }
		STATICTEXT					{ }
		STATICTEXT 					{ }
		
		SEPARATOR 					{ LINE; }
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ JOINENDSCALE; }
		

		BOOL VP_XMB_MOTIONBLUR 				{ ANIM OFF; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }
		
		LONG VP_XMB_MOTION_SAMPLES_MOTION		{ ANIM OFF; MIN 1; MAX 6; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		LONG VP_XMB_MOTION_SAMPLES_DEFORMATION		{ ANIM OFF; MIN 0; MAX 6; } 
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		LONG VP_XMB_MOTION_SAMPLES_HAIR			{ ANIM OFF; MIN 0; MAX 6; }
		STATICTEXT 					{ }
		STATICTEXT					{ }

		SEPARATOR 					{ LINE; }
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ JOINENDSCALE; }

		LONG VP_XMB_RAYTRACING_SAMPLER
		{
			PARENTCOLLAPSE; 
			FIT_H;
			ANIM OFF;
			CYCLE
			{
				VP_XMB_RAYTRACING_SAMPLER_FIXED;
				VP_XMB_RAYTRACING_SAMPLER_ADAPTIVE;
				VP_XMB_RAYTRACING_SAMPLER_INTERACTIVE;
			}
		}
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ }

		LONG VP_XMB_RAYTRACING_INTERACTIVE_MODE
		{
			PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER;
			FIT_H;
			ANIM OFF;
			CYCLE
			{
				VP_XMB_RAYTRACING_INTERACTIVE_MODE_NOEND;
				VP_XMB_RAYTRACING_INTERACTIVE_MODE_PASSES;
				VP_XMB_RAYTRACING_INTERACTIVE_MODE_TIME;
			}
		}
		STATICTEXT 					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINEND; }
		STATICTEXT					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; }

		LONG VP_XMB_RAYTRACING_INTERACTIVE_PASSES	{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; ANIM OFF; MIN 1; MAX 65536; }
		STATICTEXT 					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINEND; }
		STATICTEXT					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINENDSCALE; }

		REAL VP_XMB_RAYTRACING_INTERACTIVE_TIME		{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; ANIM OFF; MIN 0.0; MAX 16384; }
		STATICTEXT 					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINEND; }
		STATICTEXT					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINENDSCALE; }

		LONG VP_XMB_RAYTRACING_INTERACTIVE_NET		{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; ANIM OFF; MIN 1; MAX 65536; }
		STATICTEXT 					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINEND; }
		STATICTEXT					{ PARENTCOLLAPSE VP_XMB_RAYTRACING_SAMPLER; JOINENDSCALE; }

		LONG VP_XMB_RAYTRACING_QUALITY
		{
			FIT_H;
			ANIM OFF;
			CYCLE
			{
				VP_XMB_RAYTRACING_QUALITY_PREVIEW;
				VP_XMB_RAYTRACING_QUALITY_LOW;
				VP_XMB_RAYTRACING_QUALITY_NORMAL;
				VP_XMB_RAYTRACING_QUALITY_HIGH;
				VP_XMB_RAYTRACING_QUALITY_USER;
				VP_XMB_RAYTRACING_QUALITY_CUSTOM;
			}
		}
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES			{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_SHADING_MIN	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_SHADING_MAX	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_SHADING_ERROR	{ ANIM OFF; MIN 0.1; MAX 100.0; STEP 0.1; UNIT PERCENT; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		BOOL VP_XMB_RAYTRACING_SAMPLES_SHADING_TRANS	{ ANIM OFF; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		SEPARATOR 					{ LINE; }
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ JOINENDSCALE; }

		REAL VP_XMB_RAYTRACING_SAMPLES_HDR_THRESHOLD	{ ANIM OFF; MIN 1.0; MAX 16384.0; STEP 1.0; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		SEPARATOR 					{ LINE; }
		STATICTEXT 					{ JOINEND; }
		STATICTEXT 					{ JOINENDSCALE; }

		REAL VP_XMB_RAYTRACING_SAMPLES_BLURRY_SHADING	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_BLURRY_LIGHT	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_BLURRY_AO	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		REAL VP_XMB_RAYTRACING_SAMPLES_BLURRY_SSS	{ ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ }
		STATICTEXT 					{ }

		BOOL VP_XMB_RAYTRACING_SAMPLES_GI_ENABLED	{ HIDDEN; ANIM OFF; }	
		STATICTEXT 					{ HIDDEN; JOINEND; }
		STATICTEXT 					{ HIDDEN; JOINENDSCALE; }
		
		LONG VP_XMB_RAYTRACING_SAMPLES_GI_DEPTH		{ HIDDEN; ANIM OFF; MIN 1; MAX 8; }
		STATICTEXT 					{ HIDDEN; JOINEND; }
		STATICTEXT					{ HIDDEN; JOINENDSCALE; }	

		REAL VP_XMB_RAYTRACING_SAMPLES_GI_SAMPLES	{ HIDDEN; ANIM OFF; MIN 0; MAX 16; STEP 0.1; }
		STATICTEXT 					{ HIDDEN; JOINEND; }
		STATICTEXT					{ HIDDEN; JOINENDSCALE; }
	}

	GROUP VP_XMB_GROUP_RAYTRACING_ADVANCED
	{
		LONG VP_XMB_RAYTRACING_ADVANCED_ENGINE
		{ 
			ANIM OFF; 
			CYCLE
			{
				VP_XMB_RAYTRACING_ADVANCED_ENGINE_PHYSICAL;
				VP_XMB_RAYTRACING_ADVANCED_ENGINE_EMBREE_FULL;
				VP_XMB_RAYTRACING_ADVANCED_ENGINE_EMBREE_XMB;
			}
		}

		LONG VP_XMB_RAYTRACING_ADVANCED_PREVIEW
		{ 
			ANIM OFF; 
			CYCLE
			{
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_NEVER;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_PROGRESSIVE;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_ALWAYS;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_ONLY;
			}
		}
		
		LONG VP_XMB_RAYTRACING_ADVANCED_PREVIEW_MIN
		{ 
			HIDDEN;
			ANIM OFF; 
			CYCLE
			{
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_HALF;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_QUARTER;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_EIGHTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_SIXTEENTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_THIRTYTWOTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_SIXTYFOURTH;
			}
		}
		
		LONG VP_XMB_RAYTRACING_ADVANCED_PREVIEW_MAX
		{ 
			HIDDEN;
			ANIM OFF; 
			CYCLE
			{
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_HALF;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_QUARTER;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_EIGHTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_SIXTEENTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_THIRTYTWOTH;
				VP_XMB_RAYTRACING_ADVANCED_PREVIEW_SIXTYFOURTH;
			}
		}
		
		LONG VP_XMB_RAYTRACING_ADVANCED_STATS
		{ 
			ANIM OFF; 
			CYCLE
			{
				VP_XMB_RAYTRACING_ADVANCED_STATS_NONE;
				VP_XMB_RAYTRACING_ADVANCED_STATS_REGULAR;
				VP_XMB_RAYTRACING_ADVANCED_STATS_DETAILED;
			}
		}
	}

	GROUP VP_XMB_GROUP_RAYTRACING_DEBUG
	{
		HIDDEN;
		BOOL VP_XMB_RAYTRACING_DEBUG_NO_SHADE		{ ANIM OFF; }
		BOOL VP_XMB_RAYTRACING_DEBUG_LUX		{ ANIM OFF; }

		BOOL VP_XMB_RAYTRACING_DEBUG_LOCK_TIME		{ ANIM OFF; }
		REAL VP_XMB_RAYTRACING_DEBUG_TIME		{ ANIM OFF; MIN 0.0; MAX 1.0; STEP 0.1; }
		LONG VP_XMB_RAYTRACING_DEBUG_SAMPLING		{ ANIM OFF; }
	}

}
