package com.app;

import algs4;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

// C-a + s to run tests in the next split pane with tmux
public class AlgorithmsTest extends TestCase {
  public void testSqrt() {
    assertEquals( Algorithms.sqrt(4), 2.0 );
  }
}
