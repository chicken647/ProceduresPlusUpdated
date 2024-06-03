if (${input$entity} instanceof MobEntity) {
    try {
        ((MobEntity) ${input$entity}).setAttackTarget(null);
    } catch (Exception e) {
        e.printStackTrace();
    }
}