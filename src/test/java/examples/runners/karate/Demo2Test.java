package examples.runners.karate;

import com.intuit.karate.junit5.Karate;

public class Demo2Test {

    @Karate.Test
    Karate testDemo2() {
        return Karate.run("classpath:examples/users/demo2.feature");
    }
}
