// C4D Menu Resource

MENU M_NODEEDITOR
{
  SUBMENU IDS_NE_M_CREATE
  {
		PLUGIN_CMD_465002312; // Create Empty Group
		SEPARATOR;
		PLUGIN_CMD_465002336; // create in port
		PLUGIN_CMD_465002337; // create out port
		SEPARATOR;
		PLUGIN_CMD_465002302; // Create Group		
		PLUGIN_CMD_465002313; // Dissolve group
  }
  
  SUBMENU IDS_NE_M_EDIT
  {
		PLUGIN_CMD_300002003; // NE undo
		PLUGIN_CMD_300002004; // NE redo
		SEPARATOR;
		PLUGIN_CMD_465002303; // cut
		PLUGIN_CMD_465002304; // copy
		PLUGIN_CMD_465002305; // paste
		PLUGIN_CMD_465002306; // duplicate
		PLUGIN_CMD_465002301; // DELETE selected
		// PLUGIN_CMD_465002330; // DELETE all
		SEPARATOR;
		PLUGIN_CMD_465002309;	// Select All Nodes
		PLUGIN_CMD_465002316; // Select Connected Nodes
		PLUGIN_CMD_465002310;	// Deselect All
		SEPARATOR;
		PLUGIN_CMD_200001021; // commander
		PLUGIN_CMD_465002327;	// Open Material Editor
		PLUGIN_CMD_465002328;	// SelectMaterial in Manager
  }

  SUBMENU IDS_NE_M_VIEW
  {
		PLUGIN_CMD_465002307;	// Frame All
		PLUGIN_CMD_465002300;	// Frame Nodes
		PLUGIN_CMD_465002308;	// Center All nodes
		PLUGIN_CMD_465002320;	// Center Nodes
		SEPARATOR;
		PLUGIN_CMD_465002325;	// Zoom In
		PLUGIN_CMD_465002326;	// Zoom Out
		PLUGIN_CMD_465002352;	// Zoom 100%
		SEPARATOR;
		PLUGIN_CMD_465002346;	// show grid
		PLUGIN_CMD_465002318;	// snap to grid
		SEPARATOR;
		PLUGIN_CMD_465002345;	// show group wires
		PLUGIN_CMD_465002343;	// wire bezier
		PLUGIN_CMD_465002355;	// wire linear
		PLUGIN_CMD_200001040;	// show errors
		SEPARATOR;
		PLUGIN_CMD_465002333;	// StepOut
		SEPARATOR;
		PLUGIN_CMD_465002311;	// Autolayout
  }

  SUBMENU IDS_NE_M_NODE
  {
		PLUGIN_CMD_465002350;	// show preview
		SEPARATOR;
		PLUGIN_CMD_465002349;	// node state all
		PLUGIN_CMD_465002348;	// node state connected
		PLUGIN_CMD_465002347;	// node state collapsed
		SEPARATOR;
		PLUGIN_CMD_465002358;	// Set Solo Node
		PLUGIN_CMD_465002356;	// Set As Start Node
		SEPARATOR;
		PLUGIN_CMD_465002315; // Remove Unused nodes
		PLUGIN_CMD_465002342; // Remove Unused ports
	}

  SUBMENU IDS_NE_M_ASSET
  {
		PLUGIN_CMD_200001025; // enter asset mode
		SEPARATOR;
		PLUGIN_CMD_465002339; // Group To Asset
		PLUGIN_CMD_465002340; // asset to group
		SEPARATOR;
		PLUGIN_CMD_200001022; // save asset as new version
		PLUGIN_CMD_200001023; // save asset as new asset
  }
}
