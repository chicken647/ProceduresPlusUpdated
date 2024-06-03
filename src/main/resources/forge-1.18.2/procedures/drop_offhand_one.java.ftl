if(${input$entity_player} instanceof Player _player_){
    if (!_player_.getOffhandItem().isEmpty() && _player_.getOffhandItem().getCount() > 0) {
        _player_.drop(new ItemStack(_player_.getOffhandItem().getItem(), 1), true);
        _player_.getOffhandItem().shrink(1);
_player_.getInventory().setChanged();
    }
}

