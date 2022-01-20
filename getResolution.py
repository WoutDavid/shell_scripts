from PIL import Image
import os
Image.MAX_IMAGE_PIXELS = 1933120000


for file in os.listdir(os.getcwd()):
    try:
        with Image.open(file) as img:
            width, height = img.size
            print(f"{os.path.basename(file)}: \t X: {width} x Y: {height}")
    except:
        pass
        
