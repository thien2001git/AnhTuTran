package DiamonShop.Utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

public class Utils {
    public static String GetStatement(String path) {
        File insertBill = new File(path);
        try {
            return new String(Files.readAllBytes(insertBill.toPath()));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
