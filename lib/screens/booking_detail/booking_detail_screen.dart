import 'package:flutter/material.dart';

class BookingDetail extends StatelessWidget {
  const BookingDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: AssetImage('assets/header.jpg'),
                          fit: BoxFit.fill))),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 15, right: 10, bottom: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF1FF),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.8),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Full servicing",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber.shade700,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                              color: Colors.amber.shade700, fontSize: 13),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          "(2k + rating)",
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "90 - 120 min",
                          style: TextStyle(
                              color: Colors.amber.shade800,
                              fontSize: 11,
                              wordSpacing: 3),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "₹ 359",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: const Size(20, 30),
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 25)),
                          child: const Text(
                            "Book",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black45,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.8),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: const Size(20, 30),
                          backgroundColor: Colors.green.shade800,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10)),
                      child: const Text(
                        "Servicing Cecklist",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    checkItem("Air filter cleaning"),
                    checkItem("Spark plug cleaning"),
                    checkItem("Brake shoe/pad rubbing"),
                    checkItem("Front back drum rubbing"),
                    checkItem("Chain and sprooket adjustment"),
                    checkItem("Clutch cable freeplay"),
                    checkItem("Engine oil check"),
                    checkItem("Front and rear wheel axle greasing"),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: const Size(20, 28),
                            backgroundColor: Colors.green.shade800,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10)),
                        child: const Text(
                          "See full servicing checklist",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 25),
                decoration: const BoxDecoration(
                  color: Color(0xFFEBF1FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What customer say about us",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            spreadRadius: 0,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Color(0xFFa1a1a1),
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Aditya singh",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber.shade700,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber.shade700,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber.shade700,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Lorem Ipsum is simply dummy "
                            "text of the printing and typesetting industry. "
                            "Lorem Ipsum has been the industry's standard",
                            style: TextStyle(
                                fontSize: 11, wordSpacing: 1, height: 1.3),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Frequently asked questions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Which engine oil do you use ?",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Are there any additional charges other than mentioned price ?",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Which engine oil do you use ? ",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget checkItem(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green.shade800),
            child: const Icon(
              Icons.check,
              size: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
