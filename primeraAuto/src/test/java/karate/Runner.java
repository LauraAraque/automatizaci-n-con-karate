package karate;

import com.intuit.karate.junit5.Karate;

public class Runner {

    @Karate.Test

    Karate testReq(){return Karate.run("prueba").relativeTo(getClass());}

}

