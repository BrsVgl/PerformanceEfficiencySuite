CONTAINER Tquaternion
{
	NAME MBS;
	INCLUDE Texpression;

	GROUP ID_TAGPROPERTIES
	{
		LONG QUAT_INTER
		{
			CYCLE
			{
				INTER_SLERP;
				INTER_SQUAD;
				INTER_LOSCH;
			}
		}
	}
}
