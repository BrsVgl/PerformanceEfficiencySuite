CONTAINER Obend
{
	NAME Obend;
	INCLUDE Obasedeform;

	SHOW DEFORMOBJECT_SIZE;
	SHOW DEFORMOBJECT_ALIGNMENT;
	SHOW DEFORMOBJECT_FITTOPARENT;
	SHOW DEFORMOBJECT_MODE;
	SHOW DEFORMOBJECT_ANGLE;
	SHOW DEFORMOBJECT_STRENGTH;
	GROUP ID_OBJECTPROPERTIES
	{
		REAL BENDOBJECT_STRENGTH 	{ UNIT DEGREE; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER -360; MAXSLIDER 360; DEFAULT 0; }
		BOOL BENDOBJECT_KEEPYAXIS	{ }
	}
}
