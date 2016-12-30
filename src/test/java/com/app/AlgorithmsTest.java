package com.app;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

// C-a + s to run tests in the next split pane with tmux
public class AlgorithmsTest extends TestCase {
  public void testSqrt() {
    assertEquals( Algorithms.sqrt(4), 2.0 );
  }
  public void testAverage() {
    assertEquals( Algorithms.testAverage(), 0.0 );
  }
}
