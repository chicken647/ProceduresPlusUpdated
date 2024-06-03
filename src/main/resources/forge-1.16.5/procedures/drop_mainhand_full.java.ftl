if(${input$entity_player} instanceof PlayerEntity){
    PlayerEntity _player_ = (PlayerEntity) ${input$entity_player};
    if (!_player_.getHeldItemMainhand().isEmpty()) {
        _player_.dropItem(_player_.getHeldItemMainhand(), false, false);
        _player_.setHeldItem(Hand.MAIN_HAND, ItemStack.EMPTY);
    }
}