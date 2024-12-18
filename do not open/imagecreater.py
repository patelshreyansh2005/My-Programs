from PIL import Image
import random
import psutil
import math
def rgb_to_2d_array(width, height, rgb_values):
  if len(rgb_values) != width * height:
    raise ValueError("Number of RGB values doesn't match image size.")
  image_array = []
  print("2D ARRAY")
  for i in range(height):
    row = []
    for j in range(width):
      index = i * width + j
      row.append(rgb_values[index])
    image_array.append(row)
  return image_array

def array_to_rgb_image(image_array):
    height = len(image_array)
    width = len(image_array[0])
    print("PIXEL")
    for row in image_array:
        for pixel in row:
            if not isinstance(pixel, tuple) or len(pixel) != 3:
                raise ValueError("Invalid data format in the 2D array. Each element should be a 3-element tuple (R, G, B).")
    image = Image.new('RGB', (width, height))
    pixels = image.load()
    print("PLEASE WAIT")
    for i in range(height):
        for j in range(width):
            pixels[j, i] = image_array[i][j]
    print("SAVING IMAGE")
    image.save("abc.png","PNG")
    print("IMAGE SAVED")

rgb_values = []
width = 100
height = 100
colors = [(255,255,255),(0,0,0)]
print("WIDTH")
for i in range(0,width*height):
    rgb_values.append(random.choice(colors))
    # rgb_values.append((random.randint(0,256),random.randint(0,256),random.randint(0,256)))
    # rgb_values.append((psutil.virtual_memory().free%255,psutil.virtual_memory().free%255,psutil.virtual_memory().free%255))
temp = []
print("HEIGHT")
# for i in range(0,height):
    # random.shuffle(rgb_values)
    # temp+=rgb_values
# rgb_values = temp
array_to_rgb_image(rgb_to_2d_array(width, height, rgb_values))