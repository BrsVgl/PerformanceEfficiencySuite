#ifndef C4D_SYMBOLS_H__
#define C4D_SYMBOLS_H__

enum
{
	IDS_ARKIT = 10000,
	IDS_FACE_CAPTURE,
	IDS_BODY_CAPTURE,
	IDS_MAXONCAPTURE,
	IDS_MAXONCAPTUREBUILD,
	IDS_FACECAPTUREVIEW,
	IDS_BODYCAPTUREVIEW,
	
	// Dialog Menus
	IDS_FILE,
	IDS_EDIT,

	// File Menu
	IDS_OPEN,
	IDS_MERGE,
	IDS_DOWNLOAD,
	IDS_PLAY,
	IDS_SHOWFILES,

	// Edit Menu
	IDS_RESYNC,
	IDS_REMOVEINCOMPLETEDOWNLOADS,
	IDS_OPENPREFERENCES,

	IDS_LOADINGCAPTUREDATA = 11000,
	IDS_SAVINGPREVIEWIMAGE,
	IDS_SAVINGMOVIE,
	IDS_SAVINGCAPTUREDATATODISK,
	IDS_SAVINGGEOMETRYDATATODISK,
	IDS_SAVINGSOUNDFILETODISK,
	IDS_SAVINGSETTINGS,
	IDS_BAKINGBLENDSHAPES,
	IDS_BAKINGPSR,
	IDS_DOWNLOADINGCAPTUREDATA,
	IDS_TRANSFERRINGPREVIEWMOVIE,
	IDS_RESTARTINGCONNECTIONTHREAD,
	IDS_SPECIFYDOWNLOADFOLDER,
	IDS_INITIALIZINGANDCONVERTINGIMAGES,
	IDS_COULDNOTCREATECAPUTREFOLDER,
	IDS_COULDNOTCREATEMCFOLDER,
	IDS_PLEASESAVEOURSCENEFIRST,
	IDS_CAPTURESOUNDTRACK,
	IDS_FACEMESHLOCKED,
	IDS_EYEMATERIAL,
	IDS_LEFTEYE,
	IDS_RIGHTEYE,
	IDS_MCFACESHADER,
	IDS_MCEYETAG,
	IDS_ASKCLOSEWARNING,
	IDS_CONNECTDEVICETODOWNLOAD,
	IDS_AREYOUSUREYOUWANTTODELETE,
	IDS_CAPTUREALREADYIMPORTED,
	IDS_DELETECATPURELOCALLY,
	IDS_PLAYSOUND,
	IDS_PLAYMOVIE,
	IDS_MCCAPTUREPOSEMORPHHELPER,

	IDS_SAVING_BODYCAPTURE_DATA_TODISK,
	IDS_SAVING_BODYCAPTURE_SKELETON_TODISK,

	IDS_CONNECT_CUSTOMIPADDRESS,
	IDS_CONNECT_FAILWRONGIPADDRESS1,
	IDS_CONNECT_FAILWRONGIPADDRESS2,
	IDS_CONNECT_FAILWRONGIPADDRESS3,
	IDS_CONNECT_WAITINGFORDEVICECONNECTION,
	IDS_CONNECT_DEVICECONNECTED,
	
	IDS_BODY = 12000,

	IDS_RANGEMAPPER,
	IDS_CAMERALOCKED,

	// Starting ID for the blend shapes
	IDS_BLENDSHAPE_LEFTEYE_BLINK = 20000,
	IDS_BLENDSHAPE_LEFTEYE_LOOKDOWN,
	IDS_BLENDSHAPE_LEFTEYE_LOOKIN,
	IDS_BLENDSHAPE_LEFTEYE_LOOKOUT,
	IDS_BLENDSHAPE_LEFTEYE_LOOKUP,
	IDS_BLENDSHAPE_LEFTEYE_SQUINT,
	IDS_BLENDSHAPE_LEFTEYE_WIDE,
	
	IDS_BLENDSHAPE_RIGHTEYE_BLINK,
	IDS_BLENDSHAPE_RIGHTEYE_LOOKDOWN,
	IDS_BLENDSHAPE_RIGHTEYE_LOOKIN,
	IDS_BLENDSHAPE_RIGHTEYE_LOOKOUT,
	IDS_BLENDSHAPE_RIGHTEYE_LOOKUP,
	IDS_BLENDSHAPE_RIGHTEYE_SQUINT,
	IDS_BLENDSHAPE_RIGHTEYE_WIDE,
	
	IDS_BLENDSHAPE_JAW_FORWARD,
	IDS_BLENDSHAPE_JAW_LEFT,
	IDS_BLENDSHAPE_JAW_RIGHT,
	IDS_BLENDSHAPE_JAW_OPEN,
	
	IDS_BLENDSHAPE_MOUTH_CLOSE,
	IDS_BLENDSHAPE_MOUTH_FUNNEL,
	IDS_BLENDSHAPE_MOUTH_PUCKER,
	IDS_BLENDSHAPE_MOUTH_LEFT,
	IDS_BLENDSHAPE_MOUTH_RIGHT,
	IDS_BLENDSHAPE_MOUTH_SMILELEFT,
	IDS_BLENDSHAPE_MOUTH_SMILERIGHT,
	IDS_BLENDSHAPE_MOUTH_FROWNLEFT,
	IDS_BLENDSHAPE_MOUTH_FROWNRIGHT,
	IDS_BLENDSHAPE_MOUTH_DIMPLELEFT,
	IDS_BLENDSHAPE_MOUTH_DIMPLERIGHT,
	IDS_BLENDSHAPE_MOUTH_STRETCHLEFT,
	IDS_BLENDSHAPE_MOUTH_STRETCHRIGHT,
	IDS_BLENDSHAPE_MOUTH_ROLLLOWER,
	IDS_BLENDSHAPE_MOUTH_ROLLUPPER,
	IDS_BLENDSHAPE_MOUTH_SHRUGLOWER,
	IDS_BLENDSHAPE_MOUTH_SHRUGUPPER,
	IDS_BLENDSHAPE_MOUTH_PRESSLEFT,
	IDS_BLENDSHAPE_MOUTH_PRESSRIGHT,
	IDS_BLENDSHAPE_MOUTH_LOWERDOWNLEFT,
	IDS_BLENDSHAPE_MOUTH_LOWERDOWNRIGHT,
	IDS_BLENDSHAPE_MOUTH_UPPERUPLEFT,
	IDS_BLENDSHAPE_MOUTH_UPPERUPRIGHT,
	
	IDS_BLENDSHAPE_BROW_DOWNLEFT,
	IDS_BLENDSHAPE_BROW_DOWNRIGHT,
	IDS_BLENDSHAPE_BROW_INNERUP,
	IDS_BLENDSHAPE_BROW_OUTERUPLEFT,
	IDS_BLENDSHAPE_BROW_OUTERUPRIGHT,
	IDS_BLENDSHAPE_CHEEK_PUFF,
	IDS_BLENDSHAPE_CHEEK_SQUINTLEFT,
	IDS_BLENDSHAPE_CHEEK_SQUINTRIGHT,
	IDS_BLENDSHAPE_NOSE_SNEERLEFT,
	IDS_BLENDSHAPE_NOSE_SNEERRIGHT,	
	
	IDS_BLENDSHAPE_TONGUE_OUT,
	
// End of symbol definition
	_DUMMY_ELEMENT_
};

#endif // C4D_SYMBOLS_H__