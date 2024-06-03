{
			Entity _ent = ${input$entity_to_rotate};
			if (!_ent.level.isClientSide() && _ent.getServer() != null)
				_ent.getServer().getCommands().performCommand(_ent.createCommandSourceStack().withSuppressedOutput().withPermission(4), ("execute as "+ ${input$entity_to_rotate}.getStringUUID() + " at @s run tp @s ~ ~ ~ facing entity " + ${input$entity_to_rotate_to}.getStringUUID()));
		}
