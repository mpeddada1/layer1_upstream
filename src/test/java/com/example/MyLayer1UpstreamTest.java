package com.example;

import com.google.common.truth.Truth;
import org.junit.Test;

public class MyLayer1UpstreamTest {

    @Test
    public void testSayHello(){
        MyLayer1Upstream myLayer1Upstream = new MyLayer1Upstream();
        Truth.assertThat(myLayer1Upstream.sayHello()).isEqualTo("one fish");
    }
}
