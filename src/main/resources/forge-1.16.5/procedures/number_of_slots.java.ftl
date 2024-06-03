new Object() {
    public int getContainerSize(IWorld world, BlockPos pos) {
        TileEntity _ent = world.getTileEntity(pos);
        if (_ent instanceof ChestTileEntity) {
            ChestTileEntity _block = (ChestTileEntity) _ent;
            return _block.getSizeInventory();
        }
        return 0;
    }

    public int getAmount(IWorld world, BlockPos pos) {
        Block block = world.getBlockState(pos).getBlock();

        if (block == Blocks.CHEST || block == Blocks.TRAPPED_CHEST) {
            ChestType chestType = world.getBlockState(pos).get(ChestBlock.TYPE);
            
            if (!ChestType.SINGLE.equals(chestType)) {
                return getContainerSize(world, pos) * 2;
            }
        }

        return getContainerSize(world, pos);
    }
}.getAmount(world, new BlockPos(${input$x}, ${input$y}, ${input$z}))