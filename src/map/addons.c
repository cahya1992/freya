// $Id: addons.c 502 2005-11-11 20:52:23Z Yor $
// Modules support...

#include <config.h>

#include <stdlib.h>
#include <string.h>

#include "../common/addons.h"
#include "addons.h"

void init_localcalltable(void) {
#ifdef DYNAMIC_LINKING
	local_table = malloc(LFNC_COUNT * 4);
	// put here list of exported functions...
#endif
}

