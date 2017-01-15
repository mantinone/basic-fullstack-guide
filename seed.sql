INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Mona Lisa', 'The famous painting with the mysterous half-smile', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg/687px-Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg',1);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Starry Night', 'One of Vincent van Goghs most famous works.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg', 3);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('The Great Wave of Kanegawa', 'This woodblock print has become emblamatic of Japan.', 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/4hjh3kj634.png', 2);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('The Thinker', 'This nude male figure brooding with chin on hand is often used as a symbol of philosophy.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/The_Thinker,_Rodin.jpg/260px-The_Thinker,_Rodin.jpg', 4);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Rams Head White Hollyhock and Little Hills', 'This painting is cool and has a description.', 'http://cdn-b.ndlap3.seria.net/sites/default/files/imagecache/Hovedspalte/images/Ram_s_Head.jpg', 5);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Woman with Bird', 'This print is cool and has a description.', 'http://www.artnet.com/WebServices/images/ll01078lldSETGFgDVECfDrCWvaHBOcZFPC/kiki-smith-ohne-titel-(woman-with-bird).jpg', 6);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Red Mt. Fuji at Dawn', 'This painting is cool and has a description.', 'http://www.ukiyoe-gallery.com/ukiyoe/fuji-fake-title.jpg', 2);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Café Terrace at Night', 'This painting is cool and has a description.', 'http://www.vangoghgallery.com/es/images/Van-Gogh_New-Template/prints-set3/print-cafe-terrace-on-place-du-forum.jpg', 3);



INSERT INTO artists (name, description, image_url)
  VALUES ('Leonardo daVinci', 'Artist and Engineer from the Italian Renaissance.  Renowned for his great paintings and ingenious inventions', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Possible_Self-Portrait_of_Leonardo_da_Vinci.jpg');
INSERT INTO artists (name, description, image_url)
  VALUES ('Hokusai', 'Japanese ukiyo-e painter and print-maker.', 'https://s-media-cache-ak0.pinimg.com/564x/d5/e5/58/d5e5587e66c640f874c547b53ac9ed0f.jpg');
INSERT INTO artists (name, description, image_url)
  VALUES ('Vincent van Gogh', 'A Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art.', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_(454045).jpg');
INSERT INTO artists (name, description, image_url)
  VALUES ('Auguste Rodin', 'A famed French sculptor noted for his ability to model complex surfaces in clay.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Rodin-cropped.png/220px-Rodin-cropped.png');
INSERT INTO artists (name, description, image_url)
  VALUES ('Georgia O Keefe', 'An American modernist painter most famous for her paintings of flowers and New Mexico landscapes.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Georgia_O'Keeffe.jpg/210px-Georgia_O'Keeffe.jpg');
INSERT INTO artists (name, description, image_url)
  VALUES ('Kiki Smith', 'An American artist whose work has addressed the themes of sex, birth and regeneration.', 'https://s-media-cache-ak0.pinimg.com/originals/80/08/0d/80080d55f7f50d708932b465128f498d.jpg');




INSERT INTO media (name, description, image_url)
  VALUES ('Oil Paint', 'Pigment suspended in oil.  Its slow drying time makes it easy to blend colors.', 'http://www.hercampus.com/sites/default/files/2016/02/18/Creative_Wallpaper_Oil_Paints_016850_.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Canvas', 'Canvas stretched across a wood frame is a popular painting surface the world over.', 'http://www.jerrysartarama.com/media/catalog/category/artist-canvas-panels.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Woodblock', 'A popular print-medium.  Designs are carved into the wood, then ink is applied to it to make a print', 'http://www.tugboatprintshop.com/singles/bonfire_BLACKBLOCK_770px.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Bronze', 'An alloy of copper and tin, frequently used for casting sculptures.', 'http://kingofwallpapers.com/bronze/bronze-003.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Printmaking', 'A broad variety of different techniques for reproducing images, including screen printing and etching printing plates.', 'https://s-media-cache-ak0.pinimg.com/736x/52/e0/2f/52e02f9ceba45eafba264c3ea08c2cd9.jpg');


INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 1, 1 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 1, 2 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 2, 3 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 2, 5 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 3, 1 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 3, 2 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 5, 1 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 5, 2 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 4, 4 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 6, 5 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 7, 3 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 7, 5 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 8, 1 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 8, 2 );
