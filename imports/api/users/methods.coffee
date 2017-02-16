import SimpleSchema from 'simpl-schema'

import { Validators } from '/imports/util/validators.coffee'

import { ProfileMethods } from './profile.coffee'
import { AvailabilityMethods } from './availability.coffee'

export Methods =

	profile: ProfileMethods

	availability: AvailabilityMethods

	remove: new ValidatedMethod
		name: 'Meteor.users.methods.remove'
		validate: ->
		run: (args) -> Meteor.users.remove Meteor.userId() if Meteor.isServer