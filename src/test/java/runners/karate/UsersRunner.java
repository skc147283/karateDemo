package runners.karate;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:features/users/users_lifecycle_api.feature");
    }
}
