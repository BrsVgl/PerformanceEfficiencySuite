CONTAINER Fgroup
{
	NAME		Fgroup;
	INCLUDE Ofield;

	GROUP ID_FIELDPROPERTIES
	{
		FIELDLIST FIELDGROUP_FIELDS
		{
			NEWLINE;
			ANIM ON;
			FIELD HIDE;
			NOROTATION;
			// Don't dissallow any channel other than rotation for group as the group content must be usable with any channels used by
			// by the field list containing the group.
		}
	}
}
