INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('Mona Lisa', 'The famous painting with the mysterous half-smile', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg/687px-Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg',1);
INSERT INTO artwork (name, description, image_url, artist)
  VALUES ('The Great Wave of Kanegawa', 'This woodblock print has become emblamatic of Japan.', 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/4hjh3kj634.png', 2);

INSERT INTO artists (name, description, image_url)
  VALUES ('Leonardo daVinci', 'Artist and Engineer from the Italian Renaissance.  Renowned for his great paintings and ingenious inventions', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Possible_Self-Portrait_of_Leonardo_da_Vinci.jpg');
INSERT INTO artists (name, description, image_url)
  VALUES ('Hokusai', 'Japanese ukiyo-e painter and print-maker.', 'https://s-media-cache-ak0.pinimg.com/564x/d5/e5/58/d5e5587e66c640f874c547b53ac9ed0f.jpg');

INSERT INTO media (name, description, image_url)
  VALUES ('Oil Paint', 'Pigment suspended in oil.  Its slow drying time makes it easy to blend colors.', 'http://www.hercampus.com/sites/default/files/2016/02/18/Creative_Wallpaper_Oil_Paints_016850_.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Canvas', 'Canvas stretched across a wood frame is a popular painting surface the world over.', 'http://www.jerrysartarama.com/media/catalog/category/artist-canvas-panels.jpg');
INSERT INTO media (name, description, image_url)
  VALUES ('Woodblock', 'A popular print-medium.  Designs are carved into the wood, then ink is applied to it to make a print', 'http://www.tugboatprintshop.com/singles/bonfire_BLACKBLOCK_770px.jpg');

INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 1, 1 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 1, 2 );
INSERT INTO artwork_media (artwork_id, media_id)
  VALUES ( 2, 3 );
