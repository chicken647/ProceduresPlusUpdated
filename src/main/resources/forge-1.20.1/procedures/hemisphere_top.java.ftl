int horizontalRadiusHemiTop = (int) ${input$radius_xz} - 1;
				int verticalRadiusHemiTop = (int) ${input$radius_y};
				int yIterationsHemiTop = verticalRadiusHemiTop;
				for (int i = 0; i < yIterationsHemiTop; i++) {
					if (i == verticalRadiusHemiTop) {
						continue;
					}
					for (int xi = -horizontalRadiusHemiTop; xi <= horizontalRadiusHemiTop; xi++) {
						for (int zi = -horizontalRadiusHemiTop; zi <= horizontalRadiusHemiTop; zi++) {
							double distanceSq = (xi * xi) / (double) (horizontalRadiusHemiTop * horizontalRadiusHemiTop) + (i * i) / (double) (verticalRadiusHemiTop * verticalRadiusHemiTop) + (zi * zi) / (double) (horizontalRadiusHemiTop * horizontalRadiusHemiTop);
							if (distanceSq <= 1.0) {
							${statement$doinshape}
							}
						}
					}
				}
