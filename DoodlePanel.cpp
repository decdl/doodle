
#include "precompile.h"

wxBEGIN_EVENT_TABLE(DoodlePanel, wxControl)
	EVT_MOTION(DoodlePanel::OnMouseMove)
	EVT_LEFT_DOWN(DoodlePanel::OnMouseDown)
	EVT_KEY_DOWN(DoodlePanel::OnKeyDown)
wxEND_EVENT_TABLE();

DoodlePanel::DoodlePanel(wxWindow *parent, const wxSize &size) : wxControl(parent, wxID_ANY, wxPoint(0, 0), size, wxBORDER_SIMPLE)
{
	// blank
}

void DoodlePanel::OnMouseMove(wxMouseEvent &event)
{
	if (event.Dragging())
	{
		wxClientDC dc(this);
		wxPen pen(*wxBLUE, 5);
		dc.SetPen(pen);
		dc.DrawLine(prePoint, event.GetPosition());
		prePoint = event.GetPosition();
		dc.SetPen(wxNullPen);
	}
	event.Skip();
}

void DoodlePanel::OnMouseDown(wxMouseEvent &event)
{
	prePoint = event.GetPosition();
	event.Skip();
}

void DoodlePanel::OnKeyDown(wxKeyEvent &event)
{
	Refresh();
	event.Skip();
}

