Arrays.stream(Minecraft.getInstance().gameSettings.keyBindings)
    .filter(binding -> binding.getKeyDescription().equals("key.${field$keybindname}"))
    .findFirst()
    .map(binding -> {
        long window = Minecraft.getInstance().getMainWindow().getHandle();
        return GLFW.glfwGetKeyName(binding.getKey().getKeyCode(), GLFW.glfwGetKeyScancode(binding.getKey().getKeyCode()));
    })
    .orElse("unassigned")