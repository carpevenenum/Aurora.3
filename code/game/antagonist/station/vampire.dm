var/datum/antagonist/vampire/vamp = null

// #TODO: Update vampire antagonist datum.
/datum/antagonist/vampire
	id = MODE_VAMPIRE
	role_type = BE_VAMPIRE
	role_text = "Vampire"
	role_text_plural = "Vampires"
	bantype = "vampires"
	feedback_tag = "vampire_objective"
	restricted_jobs = list("AI", "Cyborg", "Chaplain")
	protected_jobs = list("Security Officer", "Warden", "Detective", "Head of Security", "Captain")
	restricted_species = list("Machine")
	welcome_text = "You are a Vampire! Use harm intent and aim for the head to drink blood! Stay away from the Chaplain, and use the darkness to your advantage."
	flags = ANTAG_SUSPICIOUS | ANTAG_RANDSPAWN | ANTAG_VOTABLE
	antaghud_indicator = "hudchangeling"

/datum/antagonist/vampire/New()
	..()

	vamp = src

/datum/antagonist/vampire/update_antag_mob(var/datum/mind/player)
		..()
		player.current.make_vampire()
