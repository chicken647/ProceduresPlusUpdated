if(${input$entity_player} instanceof Player _player_){
    if (!_player_.getMainHandItem().isEmpty() && _player_.getMainHandItem().getCount() > 0) {
        _player_.drop(new ItemStack(_player_.getMainHandItem().getItem(), 1), true);
        _player_.getMainHandItem().shrink(1);
_player_.getInventory().setChanged();
    }
}

