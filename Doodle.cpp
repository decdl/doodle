
#include "precompile.h"

IMPLEMENT_APP(Doodle);

bool Doodle::OnInit()
{
	DoodleFrame *frame = new DoodleFrame;
	frame->Show(true);
	return true;
}
