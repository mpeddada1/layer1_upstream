package com.example;

import com.google.common.truth.Truth;
import org.junit.Test;

public class MyLayer1UpstreamTwoTest {

    @Test
    public void testSayHello(){
        MyLayer1UpstreamTwo myLayer1UpstreamTwo = new MyLayer1UpstreamTwo();
        Truth.assertThat(myLayer1UpstreamTwo.sayHello()).isEqualTo("two fish");
    }
}
