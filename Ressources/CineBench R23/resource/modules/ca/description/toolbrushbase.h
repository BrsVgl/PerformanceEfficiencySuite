#ifndef TOOLBRUSHBASE_H__
#define TOOLBRUSHBASE_H__

enum
{
	ID_BRUSH_BASE_TOOL_GROUP_PAINT = 2100,

	//////////////////////////////////////////////////////////////////////////

	ID_BRUSH_BASE_TOOL_RADIUS = 2000,
	ID_BRUSH_BASE_TOOL_STEP = 2001,
	ID_BRUSH_BASE_TOOL_PEN = 2002,
	ID_BRUSH_BASE_TOOL_VISIBLE_ONLY = 2003,
	ID_BRUSH_BASE_TOOL_STRENGTH = 2004,
	ID_BRUSH_BASE_TOOL_PROJECTION = 2005,
	ID_BRUSH_BASE_TOOL_SELECTED = 2006,
	ID_BRUSH_BASE_TOOL_FALLOFF = 2007,
	ID_BRUSH_BASE_TOOL_WIDTH = 2008,
	ID_BRUSH_BASE_TOOL_FALLOFF_CURVE = 2009,
	ID_BRUSH_BASE_TOOL_HARDNESS = 2010,
	ID_BRUSH_BASE_TOOL_TAGTYPE = 2011,
	ID_BRUSH_BASE_TOOL_PERVERTEX = 2012, 

	//////////////////////////////////////////////////////////////////////////

	ID_BRUSH_BASE_TOOL_PEN_NONE = 0,
	ID_BRUSH_BASE_TOOL_PEN_RADIUS,
	ID_BRUSH_BASE_TOOL_PEN_STRENGTH,
	ID_BRUSH_BASE_TOOL_PEN_HARDNESS,

	ID_BRUSH_BASE_TOOL_FALLOFF_NONE = 0,
	ID_BRUSH_BASE_TOOL_FALLOFF_LINEAR,
	ID_BRUSH_BASE_TOOL_FALLOFF_DOME,
	ID_BRUSH_BASE_TOOL_FALLOFF_BELL,
	ID_BRUSH_BASE_TOOL_FALLOFF_CIRCLE,
	ID_BRUSH_BASE_TOOL_FALLOFF_NEEDLE,
	ID_BRUSH_BASE_TOOL_FALLOFF_SPLINE,
	ID_BRUSH_BASE_TOOL_FALLOFF_SIMPLE,

	//////////////////////////////////////////////////////////////////////////

	ID_BRUSH_BASE_TOOL_DUMMY
};

#endif // TOOLBRUSHBASE_H__
