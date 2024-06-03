(new Object() {
						public String getTrimMaterial() {
							CompoundTag dataIndex0 = new CompoundTag();
							${input$entity}.saveWithoutId(dataIndex0);
							ListTag inventory = dataIndex0.getList("Inventory", 10);

							for (int i = 0; i < inventory.size(); i++) {
								CompoundTag item = inventory.getCompound(i);
								byte slot = item.getByte("Slot");
								
								if (slot == ${field$armor}) {
									return item.getCompound("tag").getCompound("Trim").getString("material");
								}
							}

							return null;
						}
					}.getTrimMaterial()).equals("${field$material}")