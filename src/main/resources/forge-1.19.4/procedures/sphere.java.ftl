int horizontalRadiusSphere = (int) ${input$radius_xz} - 1;
int verticalRadiusSphere = (int) ${input$radius_y} - 1;
int yIterationsSphere = verticalRadiusSphere;
for (int i = -yIterationsSphere; i <= yIterationsSphere; i++) {
	for (int xi = -horizontalRadiusSphere; xi <= horizontalRadiusSphere; xi++) {
		for (int zi = -horizontalRadiusSphere; zi <= horizontalRadiusSphere; zi++) {
			double distanceSq = (xi * xi) / (double) (horizontalRadiusSphere * horizontalRadiusSphere) + (i * i) / (double) (verticalRadiusSphere * verticalRadiusSphere) + (zi * zi) / (double) (horizontalRadiusSphere * horizontalRadiusSphere);
			if (distanceSq <= 1.0) {
				${statement$doinshape}
			}
		}
	}
}