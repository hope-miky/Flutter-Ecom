var reviewList = [
  new Review(
    name: "Sam Djong",
    authorimage:
        "https://cdn.pixabay.com/photo/2021/01/21/16/44/model-5937809_1280.jpg",
    date: "Oct 12, 2010",
    rating: 4.5,
    liked: true,
    review:
        "Traumatic hemorrhage of cerebrum, unspecified, with loss of consciousness of 30 minutes or less	 Traumatic hemorrhage of cerebrum, unspecified, with loss of consciousness of 30 minutes or less	",
  ),
  new Review(
    name: "Kylen Donica",
    date: "Aug 01, 2020",
    authorimage:
        "https://cdn.pixabay.com/photo/2019/03/09/20/30/international-womens-day-4044939_1280.jpg",
    rating: 1.8,
    review:
        "Other displaced fracture of base of first metacarpal bone, unspecified hand, initial encounter for closed fracture	",
  ),
  new Review(
    name: "Donica Marice",
    date: "Mar 23, 2020",
    liked: true,
    authorimage:
        "https://cdn.pixabay.com/photo/2016/12/07/21/01/cartoon-1890438_1280.jpg",
    rating: 3.3,
    review:
        "Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	 Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	",
  ),
  new Review(
    name: "Elicia Clary",
    date: "May 12, 2020",
    authorimage:
        "https://cdn.pixabay.com/photo/2021/08/23/17/58/woman-6568434_1280.png",
    rating: 4.5,
    review:
        "Unspecified injury of muscle(s) and tendon(s) of peroneal muscle group at lower leg level, right leg, sequela	Unspecified injury of muscle(s) and tendon(s) of peroneal muscle group at lower leg level, right leg, sequela	",
  ),
  new Review(
    name: "Merrick Jimmie",
    date: "Nov 01, 2021",
    authorimage:
        "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png",
    rating: 4.6,
    review:
        "Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	 Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	Adverse effect of antineoplastic and immunosuppressive drugs, subsequent encounter	",
  ),
];

class Review {
  final String name;
  final String date;
  final String review;
  final String authorimage;
  final double rating;
  final bool liked;

  Review({
    this.authorimage = "",
    this.date = "Sep 23, 2021",
    this.liked = false,
    this.name = "Sam Afre",
    this.rating = 0,
    this.review = "Nothing",
  });
}
