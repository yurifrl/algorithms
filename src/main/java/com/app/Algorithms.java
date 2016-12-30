package com.app;

import edu.princeton.cs.algs4.Average;

public class Algorithms {
  public static double sqrt( double c ) {
    if (c < 0) return Double.NaN;

    double err = 1e-15;
    double t = c;

    while (Math.abs(t - c/t) > err * t)
      t = (c/t + t) / 2.0;

    return t;
  }

  public static double testAverage( ) {
    Average.main(new String[] { });

    return 0.0;
  }
}
