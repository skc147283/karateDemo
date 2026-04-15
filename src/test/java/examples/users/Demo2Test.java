package examples.users;

import com.intuit.karate.junit5.Karate;

public class Demo2Test {

    @Karate.Test
    Karate testDemo2() {
        return Karate.run("demo2").relativeTo(getClass());
    }
}