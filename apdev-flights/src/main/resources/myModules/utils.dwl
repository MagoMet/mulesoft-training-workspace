/*
 * This file contains all utility  functions used for Mule United Airport API
 * You can't add output parameters in here. Only functions
 */

fun getNumSeats(flightType: String) = (if(contains(flightType, '727'))
		129
	else
	if(flightType contains '737')
		236
	else
	if(flightType contains '747')
		336
	else
		450)

fun genFlightID(carrierName: String) = (
	using(carrier = upper(carrierName))
	using(randID = ceil(random() * 10000 as String))
	
	if(contains(carrier, 'UNITED'))
		'UA-' ++ randID
	else
	if(contains(carrier, 'AMERICAN'))
		'AA-' ++ randID
	else
	if(contains(carrier, 'DELTA'))
		'DL-' ++ randID
	else
		'XX-' ++ randID
)