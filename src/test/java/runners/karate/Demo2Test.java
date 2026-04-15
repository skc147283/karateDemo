package runners.karate;

import com.intuit.karate.junit5.Karate;

public class Demo2Test {

    @Karate.Test
    Karate testDemo2() {
        return Karate.run("classpath:features/users/variables_basic_validation.feature");
    }
}
