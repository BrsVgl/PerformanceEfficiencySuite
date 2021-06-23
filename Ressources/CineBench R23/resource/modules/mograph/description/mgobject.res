CONTAINER MGobject
{
	NAME		MGobject;
	INCLUDE Obase;

	GROUP		ID_OBJECTPROPERTIES
	{
		LINK	MG_OBJECT_LINK
		{
			REFUSE
			{
				Osky;
				Oforeground;
				Obackground;
				GVbase;
				VPbase;
				Mbase;
				Xbase;
				Olight;
				Ovolumebuilder;
				Ovolume;
				Ovolumeset;
				1039866; // Ovolumeloader  for some reason this is not accepted as name
				Ovolumefilter;
			}
			ACCEPT
			{
				Tpolygonselection;
				Tpointselection;
				Tedgeselection;
				Oparticle;
				Obase;
				1001381;
			}
		}
		BOOL	MG_OBJECT_ALIGN
		{
		}
		SEPARATOR
		{
			LINE;
		}
	}
}
