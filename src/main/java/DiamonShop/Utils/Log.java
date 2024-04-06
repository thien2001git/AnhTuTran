package DiamonShop.Utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Log {
    public static void i(String mess) {
        try {
            File f = new File("/log.txt");
            if (!f.exists()) {
                f.createNewFile();
            }
            BufferedWriter writer = new BufferedWriter(new FileWriter(f.getName(), true));

            writer.write(mess);
            writer.newLine();

            writer.close();
        }
        catch (IOException e) {
            System.out.println("Exception occurred: " + e);
        }
    }
}
