#ifndef H_TILEINFO_H
#define H_TILEINFO_H

enum TileFlip {
  Horizontal,
  Vertical,
  Both
};


struct	tileinfo {
  bool	o;
  enum TileFlip flip;

  uint	id;
  SNESWord	original_data;
};

#endif