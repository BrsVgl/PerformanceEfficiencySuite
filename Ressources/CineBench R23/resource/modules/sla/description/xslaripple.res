CONTAINER XSLARipple
{
  NAME XSLARipple;

  INCLUDE Mpreview;
	INCLUDE Xbase;

  GROUP ID_SHADERPROPERTIES
  {
    REAL SLA_WAVE_PARAMS_LENGTH { UNIT METER; MIN 0.00001; }
    REAL SLA_WAVE_PARAMS_SPEED { MIN 0; }
    REAL SLA_WAVE_AMPLITUDE { UNIT PERCENT; MIN 0; }
    REAL SLA_WAVE_FALLOFF { UNIT PERCENT; MIN 0; MINSLIDER 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
    REAL SLA_WAVE_PARAMS_MIN_STRENGTH { UNIT PERCENT; MIN 0; MAX 1000; MINSLIDER 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
    LONG SLA_WAVE_PERIODS { MIN 1; }
    BOOL SLA_WAVE_PARAMS_SPEED_PARTICLE_DEPENDENT { }
    LINK SLA_WAVE_PARAMS_OBJECT  { }
    LINK SLA_WAVE_PARTICLE { }
  }
}