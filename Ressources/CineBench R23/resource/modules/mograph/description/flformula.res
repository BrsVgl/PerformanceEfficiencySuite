CONTAINER FLformula
{
	NAME FLformula;
	INCLUDE FLbase;

	GROUP FLbase
	{
		GROUP
		{
			COLUMNS 1;
			STRING FORMULAFIELDLAYER_STRING { }
		}
		GROUP FORMULAFIELDLAYER_GRP
		{
			COLUMNS 1;
			STATICTEXT FORMULAFIELDLAYER_HELP01 { }
			STATICTEXT FORMULAFIELDLAYER_HELP02 { }
			STATICTEXT FORMULAFIELDLAYER_HELP03 { }
			STATICTEXT FORMULAFIELDLAYER_HELP04 { }
			STATICTEXT FORMULAFIELDLAYER_HELP05 { }
			STATICTEXT FORMULAFIELDLAYER_HELP06 { }
			STATICTEXT FORMULAFIELDLAYER_HELP07 { }
			STATICTEXT FORMULAFIELDLAYER_HELP08 { }
			GROUP
			{
				REAL FORMULAFIELDLAYER_TIME
				{
					MINSLIDER -100.0;
					MAXSLIDER 100.0;
					STEP 0.1;
					UNIT			PERCENT;
					CUSTOMGUI REALSLIDER;
				}
				REAL FORMULAFIELDLAYER_FREQ
				{
					MINSLIDER -10.0;
					MAXSLIDER 10.0;
					STEP 0.001;
					CUSTOMGUI REALSLIDER;
				}
			}
		}
	}
}
