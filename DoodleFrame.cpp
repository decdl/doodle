
#include "prec.h"

wxBEGIN_EVENT_TABLE(DoodleFrame, wxFrame)
wxEND_EVENT_TABLE();

DoodleFrame::DoodleFrame() : wxFrame(nullptr, wxID_ANY, L"Doodle", wxDefaultPosition, wxSize(900,1200))
{
	new DoodlePanel(this, wxSize(300,400));
}
