if(${input$entity_player} instanceof Player _player_){
if (!_player_.getMainHandItem().isEmpty()) {
        _player_.drop(_player_.getMainHandItem(), true);
        _player_.setItemInHand(InteractionHand.MAIN_HAND, ItemStack.EMPTY);
    }_player_.getInventory().setChanged();}