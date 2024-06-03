{
			Entity _ent = ${input$entity_to_rotate};
			if (!_ent.world.isRemote && _ent.world.getServer() != null) {
				_ent.world.getServer().getCommandManager().handleCommand(_ent.getCommandSource().withFeedbackDisabled().withPermissionLevel(4), ("execute as " + ${input$entity_to_rotate}.getCachedUniqueIdString() + " at @s run tp @s ~ ~ ~ facing entity " + ${input$entity_to_rotate_to}.getCachedUniqueIdString()));
			}
		}
