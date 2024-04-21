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

    String Breadcrumb = "<ol class='breadcrumb'>\n" +
            "                            <li class='breadcrumb-item'><a href='#'>Home</a></li>\n" +
            "                            <li class='breadcrumb-item active' aria-current='page'>Library</li>\n" +
            "                          </ol>";

    public static String BreadcrumbBuilder(String[] name, String[] href) {
        StringBuilder sb = new StringBuilder();
        sb.append("<ol class='breadcrumb'>");
        for (int i = 0; i < name.length - 1; i++) {
            sb.append(String.format("<li class='breadcrumb-item'><a href='%s'>%s</a></li>", href[i], name[i]));
        }
        sb.append(
                String.format(
                        "<li class='breadcrumb-item active' aria-current='page'>%s</li>",
                        name[name.length - 1]
                )
        );
        sb.append("</ol>");
        return sb.toString();
    }
}
