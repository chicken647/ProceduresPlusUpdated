if(${input$entity_player} instanceof PlayerEntity){
    PlayerEntity _player_ = (PlayerEntity) ${input$entity_player};
    if (!_player_.getHeldItemMainhand().isEmpty() && _player_.getHeldItemMainhand().getCount() > 0) {
        _player_.dropItem(new ItemStack(_player_.getHeldItemMainhand().getItem(), 1), false, false);
        _player_.getHeldItemMainhand().shrink(1);
    }
}