CONTAINER Osniper
{
	NAME Osniper;

	GROUP 
	{
		BOOL IRR_ENABLE {ANIM OFF;}

		REAL IRR_DETAIL
		{
			FIT_H; SCALE_H;
			UNIT PERCENT;
			ANIM OFF;
			MIN 0.0;MAX 100.0;
			CUSTOMGUI REALSLIDER;
		}

		BOOL IRR_LOCKTOVIEWPORT {ANIM OFF;}
		BOOL IRR_ALPHAMODE {ANIM OFF;}
		BOOL IRR_GADGETOVERLAY {ANIM OFF;}

		BUTTON IRR_SAVE_IRR {}

		//GROUP 
		//{
		//	COLUMNS 2;
		//	BUTTON IRR_SAVE_VIEW {}
		//}

		BITMAPBUTTON IRR_BITMAP	{ BUTTON; }  
	}
}
