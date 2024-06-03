if(${input$entity_player} instanceof PlayerEntity){
    PlayerEntity _player_ = (PlayerEntity) ${input$entity_player};
    if (!_player_.getHeldItemOffhand().isEmpty() && _player_.getHeldItemOffhand().getCount() > 0) {
        _player_.dropItem(new ItemStack(_player_.getHeldItemOffhand().getItem(), 1), false, false);
        _player_.getHeldItemOffhand().shrink(1);
    }
}