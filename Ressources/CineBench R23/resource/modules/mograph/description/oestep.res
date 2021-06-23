CONTAINER Oestep
{
	NAME		Oestep;

	INCLUDE Obaseeffector;

	GROUP		ID_MG_BASEEFFECTOR_GROUPEFFECTOR
	{
		SPLINE	MGSTEPEFFECTOR_SPLINE
		{
			SHOWGRID_H;
			SHOWGRID_V;

			MINSIZE_H 120;
			MINSIZE_V 90;

			EDIT_H;
			EDIT_V;

			X_MIN 0;
			X_MAX 1;

			Y_MIN 0;
			Y_MAX 1;

			X_STEPS 0.01;
			Y_STEPS 0.01;
		}
		LONG	MGSTEPEFFECTOR_GAP
		{
			MIN 0;
		}
	}
}
