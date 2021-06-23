#ifndef C4D_SYMBOLS_H__
#define C4D_SYMBOLS_H__

enum
{
	// string table definitions
	IDS_START = 10000,

	IDS_CB_LINK1,
	IDS_CB_LINK2,
	IDS_CB_LINK3,

	IDS_CB_GHZ,
	IDS_CB_CORE,
	IDS_CB_CORES,
	IDS_CB_THREAD,
	IDS_CB_THREADS,
	IDS_CB_CORES_SHORT,
	IDS_CB_THREADS_SHORT,
	IDS_CB_ERROR_NOTFOUND,
	IDS_CB_ERROR_START_PRERENDERING,
	IDS_CB_ERROR_START_RENDERING,
	IDS_CB_PERFORM_OGLTEST_LOADING,
	IDS_CB_PERFORM_OGLTEST_LOADING_SHORT,
	IDS_CB_PERFORM_OGLTEST_PREPARE,
	IDS_CB_PERFORM_OGLTEST_PREPARE_SHORT,
	IDS_CB_PERFORM_OGLTEST_TESTMATCH,
	IDS_CB_PERFORM_OGLTEST_TESTMATCH_SHORT,
	IDS_CB_PERFORM_OGLTEST_DIFFERENCE,
	IDS_CB_PERFORM_OGLTEST_RUNBENCH,
	IDS_CB_PERFORM_OGLTEST_RUNBENCH_SHORT,
	IDS_CB_PERFORM_CPU1TEST_PREPARE,
	IDS_CB_PERFORM_CPU1TEST_RENDERING,
	IDS_CB_PERFORM_CPUxTEST_PREPARE,
	IDS_CB_PERFORM_CPUxTEST_RENDERING,
	IDS_CB_QUALITYERROR1,
	IDS_CB_CANCELED,
	IDS_CB_GLTIMEOUT,
	IDS_CB_GLERROR2,
	IDS_CB_RESTART,
	IDS_CB_WELCOME_PL,
	IDS_CB_WELCOME_SI,
	IDS_CB_GFX_MINIMUM,
	IDS_CB_CMD_RUNALL,
	IDS_CB_CMD_RUNALL_HELP,
	IDS_CB_CMD_ADVANCED,
	IDS_CB_CMD_ADVANCED_HELP,
	IDS_CB_CMD_KEEPBEST,
	IDS_CB_CMD_KEEPBEST_HELP,
	IDS_CB_CMD_SHOWPREFS,
	IDS_CB_CMD_SHOWPREFS_HELP,
	IDS_CB_CMD_WEBSITE,
	IDS_CB_CMD_WEBSITE_HELP,
	IDS_CB_CMD_LICENSES,
	IDS_CB_CMD_LICENSES_HELP,
	IDS_CB_CMD_DISCLAIMER,
	IDS_CB_CMD_DISCLAIMER_HELP,
	IDS_CB_CMD_CB,
	IDS_CB_CMD_CB_HELP,
	IDS_CB_CMD_CB_STAT,
	IDS_CB_CMD_CB_STAT_HELP,

	IDS_CB_RANK_YOURMACHINE,
	IDS_CB_RANK_IDENTICALMACHINE,
	IDS_CB_RANK_COMPAREMACHINE,
	IDS_CB_RANK_SAMESPEED,
	IDS_CB_RANK_SLOWER,
	IDS_CB_RANK_FASTER,
	IDS_CB_RANK_REFMATCH,
	IDS_CB_RANK_OGL,
	IDS_CB_RANK_CBCPUSINGLECORE,
	IDS_CB_RANK_CBCPUMULTICORE,
	IDS_CB_RANK_CBRATIO,
	IDS_CB_OGLVERSION,
	IDS_CB_OGLDRIVERVERSION,
	IDS_CB_RANK_INFO,
	IDS_CB_RANK_VERSION,

	IDS_CB_YOURSCORE,
	IDS_CB_SAMEMACHINE,
	IDS_CB_SAVESCSORE,
	IDS_CB_FILEEXISTS,
	IDS_CB_FILEERROR,

	IDS_CB_DLG_OGL,
	IDS_CB_DLG_START,
	IDS_CB_DLG_STOP,
	IDS_CB_DLG_RUNNING,
	IDS_CB_DLG_FINALIZING,
	IDS_CB_DLG_REFMATCH,
	IDS_CB_DLG_CPU,
	IDS_CB_DLG_CPU_SINGLE,
	IDS_CB_DLG_MPRATIO,
	IDS_CB_DLG_YOURSYSTEM,
	IDS_CB_DLG_PROC,
	IDS_CB_DLG_CORES,
	IDS_CB_DLG_OS,
	IDS_CB_DLG_CBVERSION,
	IDS_CB_DLG_GFXBOARD,
	IDS_CB_DLG_INFO,
	IDS_CB_DLG_RANKING,
	IDS_CB_DLG_RANK_OPENGL,
	IDS_CB_DLG_RANK_OGLMATCH,
	IDS_CB_DLG_RANK_CPU,
	IDS_CB_DLG_RANK_CPU1,
	IDS_CB_DLG_RANK_MPRATIO,
	IDS_CB_DLG_RANK_DETAILS,
	IDS_CB_DLG_DETAILS_CORES,
	IDS_CB_DLG_DETAILS_GHZ,
	IDS_CB_DLG_DETAILS_PROC,
	IDS_CB_DLG_DETAILS_GFXVENDOR,
	IDS_CB_DLG_DETAILS_GFXBOARD,
	IDS_CB_DLG_DETAILS_GFXDRIVERVERSION,
	IDS_CB_DLG_DETAILS_GFXOPENGLVERSION,
	IDS_CB_DLG_DETAILS_OS,
	IDS_CB_DLG_DETAILS_CBVERSION,
	IDS_CB_DLG_DETAILS_CBINFO,
	IDS_CB_DLG_DETAILS_CBVERSIONNUM,
	IDS_CB_DLG_DETAILS_CBBUILDID,
	IDS_CB_DLG_DETAILS_OGLMATCH,
	IDS_CB_FPS,
	IDS_CB_PTS,

	// Dialog definitions of IDD_CBPREFS start here
	IDD_CBPREFS,
	IDC_CB_LANGUAGE,
	IDC_CB_CUSTOMRENDERTHREADS,
	IDC_CB_CUSTOMRENDERTHREADS_CNT,
	IDC_CB_MINIMUMTESTDURATION,
	// Dialog definitions of IDD_CBPREFS end here


	// Dialog definitions of IDD_DISCLAIMER start here
	IDD_DISCLAIMER,
	IDC_DISCLAIMER,
	IDC_ACCEPT,
	IDC_DECLINE,
	// Dialog definitions of IDD_DISCLAIMER end here

	IDS_CB_CMD_WEBSITE_C4D,
	IDS_CB_CMD_WEBSITE_C4D_HELP,
	IDS_CB_C4DLINK,
	IDS_CB_CMD_LICENSES_C4D,
	IDS_CB_CMD_LICENSES_C4D_HELP,

	IDS_CB_DLG_MINIMUM_DURATION,
	IDS_CB_DLG_MINIMUM_DURATION_OFF,
	IDS_CB_DLG_MINIMUM_DURATION_10MIN,
	IDS_CB_DLG_MINIMUM_DURATION_30MIN,
	IDS_CB_DLG_MINIMUM_DURATION_CUSTOM1,
	IDS_CB_DLG_MINIMUM_DURATION_CUSTOM2,

// End of symbol definition
	_DUMMY_ELEMENT_
};

#endif // C4D_SYMBOLS_H__
