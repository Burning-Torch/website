double getFontSizeBig(width) {
  if (width < 600) {
    return 20;
  } else if (width < 800) {
    return 22;
  } else {
    return 24;
  }
}

double getFontSize(width) {
  if (width < 600) {
    return 14;
  } else if (width < 800) {
    return 16;
  } else {
    return 18;
  }
}
