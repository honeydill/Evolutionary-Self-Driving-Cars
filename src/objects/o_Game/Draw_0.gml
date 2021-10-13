
draw_set_color(c_red);
draw_text(80, 450, "Current Generation: "+string(currentGeneration));
draw_text(80, 485, "Press 'a' key to prematurely start next generation");
draw_text(300, 450, "Timer: " + string(timer) + "/" + string(timerLimit));