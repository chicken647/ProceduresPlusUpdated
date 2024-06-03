if (${input$entity} instanceof Mob) {
    try {
        ((Mob) ${input$entity}).setTarget(null);
    } catch (Exception e) {
        e.printStackTrace();
    }
}