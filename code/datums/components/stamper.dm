/// Allows basic mobs to stamp paper
/datum/component/stamper
	///What stamp png to use when leaving a print on pheromone paper
	var/stamp_image = "stamp-rat"
	///What stamp overlay to use
	var/stamp_overlay = "stamp-basicmob"

/datum/component/stamper/Initialize(image)
	if(!image)
		return
	stamp_image = image

/datum/component/stamper/proc/get_stamp_info()
	var/datum/asset/spritesheet/sheet = get_asset_datum(/datum/asset/spritesheet/simple/paper)
	return list(
		interaction_mode = MODE_STAMPING,
		stamp_icon_state = stamp_overlay,
		stamp_class = sheet.icon_class_name(stamp_image)
	)
