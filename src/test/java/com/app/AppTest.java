package com.app;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class AppTest extends TestCase {
  public void testMainCall() {
    App.main(new String[] {  });
  }

  public void testSqrt() {
    App obj = new App();
    assertTrue( obj.sqrt(4) == 2  );
  }
}
