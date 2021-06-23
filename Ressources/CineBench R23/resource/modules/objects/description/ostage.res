CONTAINER Ostage
{
	NAME Ostage;
	INCLUDE Obase;

	SHOW ID_BASEOBJECT_GENERATOR_FLAG;

	GROUP ID_OBJECTPROPERTIES
	{
		LINK STAGEOBJECT_CLINK { ACCEPT { Obase;      	} } // all objects can be used as camera
		LINK STAGEOBJECT_SLINK { ACCEPT { Osky;         } }
		LINK STAGEOBJECT_FLINK { ACCEPT { Oforeground;  } }
		LINK STAGEOBJECT_BLINK { ACCEPT { Obackground;  } }
		LINK STAGEOBJECT_ELINK { ACCEPT { Oenvironment; } }

	}
}