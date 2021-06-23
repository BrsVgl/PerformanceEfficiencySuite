CONTAINER Dpsrmatrix
{
	NAME Dpsrmatrix;

	VECTOR PSRMATRIX_POS	{ UNIT METER; }
	VECTOR PSRMATRIX_SCALE	{ STEP 0.01; }
	VECTOR PSRMATRIX_ROT	{ UNIT DEGREE; }
	LONG PSRMATRIX_ORDER	{ CYCLE { 0, ZXYGLOBAL;	1, ZYXGLOBAL; 2, YXZGLOBAL;	3, YZXGLOBAL; 4, XZYGLOBAL; 5, XYZGLOBAL; } }
}
