/*
  user_config_override_precompile.h - any configuration overrides for Tasmota

  Copyright (C) 2021  Laszlo Magyar

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef _USER_CONFIG_OVERRIDE_PRECOMPILE_H_
#define _USER_CONFIG_OVERRIDE_PRECOMPILE_H_

/*****************************************************************************************************\
 * Here you can define or override anything before Tasmota.ino compilation starts
\*****************************************************************************************************/

/*
// !!! Remember that your changes GOES AT THE BOTTOM OF THIS FILE right before the last #endif !!! 
*/


#ifdef FIRMWARE_IR__NOMODULATION
#undef CODE_IMAGE_STR
#define CODE_IMAGE_STR "ir-nomodulation"
#endif


#endif  // _USER_CONFIG_OVERRIDE_PRECOMPILE_H_
