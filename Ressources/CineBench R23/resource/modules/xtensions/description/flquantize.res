CONTAINER FLQuantize
{
	NAME FLQuantize;

	INCLUDE FLbase;

	GROUP	FLBase
	{
		DEFAULT 1;

		SEPARATOR { LINE; }

		LONG FIELDLAYER_QUANTIZE_STEPS { MIN 1; MAXSLIDER 10; CUSTOMGUI LONGSLIDER; }
	}
}
