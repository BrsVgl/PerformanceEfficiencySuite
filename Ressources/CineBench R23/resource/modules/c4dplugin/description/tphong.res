CONTAINER Tphong
{
	NAME Tphong;
	INCLUDE Tbase;

	GROUP ID_TAGPROPERTIES
	{
		BOOL PHONGTAG_PHONG_ANGLELIMIT { }
		REAL PHONGTAG_PHONG_ANGLE { PARENTID PHONGTAG_PHONG_ANGLELIMIT; UNIT DEGREE; MIN 0.0; MAX 180.0; }
		BOOL PHONGTAG_PHONG_USEEDGES { }
		BUTTON PHONGTAG_CREATE_NORMAL_TAG {}
		STATICTEXT PHONGTAG_STRING_NORMAL_TAG {ANIM OFF;}
	}
}
