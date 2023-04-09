int binarySearch(List<int> list, int target) {
  int startingPoint = 0;
  int endingPoint = list.length - 1;
  while (startingPoint <= endingPoint) {
    int center = ((startingPoint+endingPoint)/2).floor();
    if(target == list[center]){
      return center;
    }else if(target>list[center]){
      startingPoint = center+1;
    }else{
      endingPoint = center-1;
    }
  }
  return -1;
}
