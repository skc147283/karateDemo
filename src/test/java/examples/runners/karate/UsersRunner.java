package examples.runners.karate;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:examples/users/users.feature");
    }
}
