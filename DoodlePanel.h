
#ifndef _DOODLE_PANEL_
#define _DOODLE_PANEL_

#include <wx/wx.h>

class DoodlePanel : public wxControl
{
	private:
		wxPoint prePoint;
		wxDECLARE_EVENT_TABLE();
	public:
		DoodlePanel(wxWindow *parent, const wxSize &size);
		void OnMouseMove(wxMouseEvent &event);
		void OnMouseDown(wxMouseEvent &event);
		void OnKeyDown(wxKeyEvent &event);
};

#endif
