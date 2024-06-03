if(${input$entity_player} instanceof Player _player_){
    if (!_player_.getOffhandItem().isEmpty()) {
        _player_.drop(_player_.getOffhandItem(), true);
        _player_.setItemInHand(InteractionHand.OFF_HAND, ItemStack.EMPTY);
        _player_.getInventory().setChanged();
    }
}