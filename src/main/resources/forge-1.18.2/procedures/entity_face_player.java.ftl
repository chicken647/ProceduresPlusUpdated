if (world instanceof ServerLevel _level)
			_level.getServer().getCommands().performCommand(new CommandSourceStack(CommandSource.NULL, new Vec3(${input$x}, ${input$y}, ${input$z}), Vec2.ZERO, _level, 4, "", new TextComponent(""), _level.getServer(), null).withSuppressedOutput(),
					"execute as @e[type=!minecraft:player${field$except}${field$types}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..${input$distance}]");
