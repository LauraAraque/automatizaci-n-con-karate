package karate;

import com.intuit.karate.junit5.Karate;

public class PruebaPost {

    @Karate.Test

    Karate testReq(){return Karate.run("prueba_post").relativeTo(getClass());}

}
