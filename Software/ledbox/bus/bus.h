/*
 * bus.h
 *
 *  Created on: 20 Jan 2018
 *      Author: fabian
 */

#ifndef BUS_H_
#define BUS_H_

// Set bus to master/slave mode
#define BUS_MASTER_SLAVE

#ifdef BUS_MASTER_SLAVE
#	define BUS_MASTER
//#	define BUS_SLAVE
#else
	// Set bus to CSMA mode
#	define BUS_CSMA
#endif

#endif /* BUS_H_ */
