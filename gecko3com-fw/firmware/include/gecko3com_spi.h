/* GECKO3COM
 *
 * Copyright (C) 2008 by
 *   ___    ____  _   _
 *  (  _`\ (  __)( ) ( )   
 *  | (_) )| (_  | |_| |   Berne University of Applied Sciences
 *  |  _ <'|  _) |  _  |   School of Engineering and
 *  | (_) )| |   | | | |   Information Technology
 *  (____/'(_)   (_) (_)
 *
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details. 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/*********************************************************************/
/** \file     gecko3com_spi.h
 *********************************************************************
 * \brief     definitions for the SPI flash file handling 
 *            (length of file slots etc.)
 *
 * \author    Christoph Zimmermann bfh.ch
 *
*/

#ifndef INCLUDED_GECKO3COM_SPI_H
#define INCLUDED_GECKO3COM_SPI_H


#define START_ADRESS_SLOT0 0x0 /**< Start adress of the first fpga configuration file in the spi flash */
#define START_ADRESS_SLOT1 0x00100000 /**< Start adress of the second fpga configuration file in the spi flash */

#define SPIFLASH_SECTOR_LENGTH 0x10000 /**< Length of one sector in the flash, needed for erasing */
#define SECTORS_PER_SLOT 16 /**< Number of sectors used for each configuration file slot */

#endif /* INCLUDED_GECKO3COM_SPI_H */
