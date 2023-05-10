// package if2a;

// import javax.imageio.ImageIO;
// import javax.swing.JFrame;
// import javax.swing.JRootPane;
// import java.awt.Canvas;
// import java.awt.Color;
// import java.awt.Font;
// import java.awt.Graphics;
// import java.awt.Graphics2D;
// import java.awt.Image;
// import java.awt.RenderingHints;
// import java.awt.image.BufferedImage;
// import java.io.IOException;

// class Gambar extends Canvas {
//     BufferedImage foto;
//     Image newFoto;

//     public Gambar() {
//         setBackground(new Color(240, 240, 240));
//         try {
//             foto = ImageIO.read(Gambar.class.getResource("f1.jpg"));
//         } catch (IOException e) {
//             e.printStackTrace();
//         } finally {
//             System.out.println("Perintah di dalam finally akan selalu dieksekusi");
//         }

//         int bingkaiLebar = 120;
//         int bingkaiTinggi = 150;
//         newFoto = foto.getScaledInstance(bingkaiLebar, bingkaiTinggi, Image.SCALE_DEFAULT);
//     }

//     public void paint(Graphics g) {
//         tampilBiodata(g);
//         int bingkaiX = 500;
//         int bingkaiY = 60;
//         g.setColor(new Color(139, 69, 19));
//         ((Graphics2D) g).setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
//         ((Graphics2D) g).setStroke(new java.awt.BasicStroke(3));
//         g.drawRect(bingkaiX, bingkaiY, 120, 150);
//         g.setColor(new Color(255, 204, 153));
//         g.fillRect(bingkaiX + 5, bingkaiY + 5, 110, 140);
//         int gambarX = bingkaiX + (120 - newFoto.getWidth(this)) / 2;
//         int gambarY = bingkaiY + (150 - newFoto.getHeight(this)) / 2;
//         g.drawImage(newFoto, gambarX, gambarY, this);
//     }

//     public void tampilBiodata(Graphics g) {
//         g.setColor(new Color(59, 89, 152));
//         g.setFont(new Font("Arial", Font.BOLD, 40));
//         g.drawString("Biodata", 200, 50);
//         g.drawLine(0, 55, 800, 55);
//         g.drawLine(0, 56, 800, 56);
//         g.drawLine(0, 57, 800, 57);
//         g.drawLine(0, 58, 800, 58);
//         g.setFont(new Font("Arial", Font.BOLD, 20));
//         g.setColor(new Color(0, 0, 0));
//         g.drawString("William Tanuwijaya", 10, 75);
//         g.drawString("NPM 2226250012", 10, 100);
//         g.drawString("Zodiak", 10, 125);
//         g.drawString("\"Jangan Malas\"", 10, 150);
//     }
// }

// class Layar extends JFrame {
//     private Gambar gambar = new Gambar();

//     public Layar() {
//         super("::IF2A-WilliamTanuwijaya::");
//         add(gambar);
//         setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//         setLocation(800, 10);
//         setSize(700, 500);
//         setResizable(true);
//         setUndecorated(true);
//         getRootPane().setWindowDecorationStyle(JRootPane.FRAME);
//         setVisible(true);
//     }
// }

// public class WilliamTanuwijaya_2226250012 {
//     public static void main(String[] args) {
//         new Layar();
//     }
// }


//gradasi bawah ini
// package if2a;

// import javax.swing.*;
// import java.awt.*;
// import java.awt.geom.Rectangle2D;

// class GradientExample extends JPanel {

//     @Override
//     protected void paintComponent(Graphics g) {
//         super.paintComponent(g);

//         Graphics2D g2d = (Graphics2D) g.create();

//         int width = getWidth();
//         int height = getHeight();

//         GradientPaint gradient = new GradientPaint(0, 0, Color.RED, 0, height, Color.BLUE);
//         g2d.setPaint(gradient);

//         Rectangle2D rect = new Rectangle2D.Double(0, 0, width, height);
//         g2d.fill(rect);

//         g2d.dispose();
//     }

//     public static void main(String[] args) {
//         SwingUtilities.invokeLater(() -> {
//             JFrame frame = new JFrame("Gradient Example");
//             frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//             frame.setSize(400, 400);
//             frame.setLocationRelativeTo(null);
//             frame.add(new GradientExample());
//             frame.setVisible(true);
//         });
//     }
// }

