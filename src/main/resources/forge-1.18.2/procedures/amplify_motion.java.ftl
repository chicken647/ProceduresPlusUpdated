Vec3 motion = ${input$entity_motion}.getDeltaMovement().scale(${input$amplifier});
${input$entity_motion}.setDeltaMovement(motion);