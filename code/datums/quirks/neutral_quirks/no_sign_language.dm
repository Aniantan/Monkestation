/datum/quirk/no_sign
	name = "Skipped Sign Training"
	desc = "You are not able to comprehend sign language"
	icon = FA_ICON_CLIPBOARD_USER
	value = 0
	gain_text = span_notice("Hand signs stop making any sense to you.")
	lose_text = span_notice("Hand signs start to make sense to you.")
	medical_record_text = "Patient skipped standard sign language comprehension training."
	mob_trait = TRAIT_NO_SIGN_LANG
