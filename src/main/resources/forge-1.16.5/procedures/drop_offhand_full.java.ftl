if(${input$entity_player} instanceof PlayerEntity){
    PlayerEntity _player_ = (PlayerEntity) ${input$entity_player};
    if (!_player_.getHeldItemOffhand().isEmpty()) {
        _player_.dropItem(_player_.getHeldItemOffhand(), false, false);
        _player_.setHeldItem(Hand.OFF_HAND, ItemStack.EMPTY);
    }
}