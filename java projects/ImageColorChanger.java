import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;

public class ImageColorChanger {

    public static void main(String[] args) throws Exception {

        // Define the input and output file paths
        File inputFile = new File("s1.jpg");
        File outputFile = new File("output_image.jpg");

        // Read the input image file
        BufferedImage image = ImageIO.read(inputFile);

        // Invert the colors of the image
        for (int y = 0; y < image.getHeight(); y++) {
            for (int x = 0; x < image.getWidth(); x++) {
                int rgba = image.getRGB(x, y);
                int r = 255 - ((rgba >> 16) & 0xff);
                int g = 255 - ((rgba >> 8) & 0xff);
                int b = 255 - (rgba & 0xff);
                int a = (rgba >> 24) & 0xff;
                image.setRGB(x, y, (a << 24) | (r << 16) | (g << 8) | b);
            }
        }

        // Write the inverted image to a file
        ImageIO.write(image, "jpg", outputFile);

        System.out.println("Image inverted successfully.");
    }
}
