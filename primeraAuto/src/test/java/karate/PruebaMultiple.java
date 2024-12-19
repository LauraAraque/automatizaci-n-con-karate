package karate;

import com.intuit.karate.junit5.Karate;

public class PruebaMultiple {

    @Karate.Test

    Karate testReq(){return Karate.run("prueba_multiple").relativeTo(getClass());}

}

