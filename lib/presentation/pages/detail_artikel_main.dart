import 'package:flutter/material.dart';

import '../../common/app_theme.dart';
import '../../common/color.dart';

class DetailArtikelMain extends StatefulWidget {
  const DetailArtikelMain({super.key});

  @override
  State<DetailArtikelMain> createState() => _DetailArtikelMainState();
}

class _DetailArtikelMainState extends State<DetailArtikelMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              Padding(
                // left, top, right, bottom
                padding: EdgeInsets.fromLTRB(20, 10, 20, 16),
                child: Text(
                  'Varises di Tangan, Penyebab dan Penanganannya',
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          Padding(
            // left, top, right, bottom
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: BaseColors.primary500,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Pencegahan',
                        style: AppTheme.appTextTheme.xSmallNoneReguler!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_today_rounded,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('12 September 2023')
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/detail 1.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Varises di tangan umumnya tidak berbahaya, tetapi sering menganggu penampilan. Kondisi ini bisa disebabkan oleh banyak hal dan ini menentukan cara penanganan serta apakah varises berbahaya atau tidak.',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Varises di tangan adalah pembesaran pembuluh darah vena di tangan yang berada dekat permukaan kulit. Kondisi ini menyebabkan pembuluh vena menjadi berwarna keunguan atau biru gelap dan tampak menonjol. Selain di tangan, varises juga bisa muncul di area tubuh lain, seperti di paha, tungkai, dan pergelangan kaki.',
                ),
                const SizedBox(height: 10),
                Text(
                  'Beragam Penyebab Varises di Tangan',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                const Text(
                    'Penyebab varises di tangan umumnya adalah lemah atau rusaknya katup vena. Pelebaran pembuluh darah ini terjadi karena darah yang semestinya menuju jantung menjadi berbalik arah dan menumpuk di dalam pembuluh vena. Selain itu, kondisi-kondisi normal yang menyebabkan peningkatan aliran darah, melemahnya dinding pembuluh darah, maupun berkurangnya lapisan lemak juga dapat menjadi penyebab terjadinya pelebaran pembuluh darah yang sering terlihat seperti varises. Meskipun sering diartikan sebagai varises, terjadinya pelebaran pembuluh darah bisa saja merupakan kondisi yang normal. Berikut ini adalah beberapa kondisi yang bisa menyebabkan varises di tangan: '),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Lemak tubuh sedikit',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Jika kadar lemak tubuh rendah atau Anda tidak memiliki banyak lemak di area tangan, pembuluh darah akan terlihat lebih menonjol.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '2. Usia',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Seiring bertambahnya usia, kulit menjadi lebih tipis dan kehilangan elastisitas. Kondisi inilah yang membuat pembuluh darah, termasuk pembuluh darah di tangan, terlihat lebih menonjol.Katup di pembuluh darah juga akan melemah seiring bertambahnya usia. Hal ini dapat menyebabkan penumpukan darah di pembuluh darah, sehingga pembuluh darah membesar.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '3. Genetik',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Jika orang tua atau anggota keluarga Anda memiliki varises di tangan, ada kemungkinan Anda juga akan mengalaminya. Hal ini karena varises di tangan bisa menjadi karakteristik yang diturunkan dari orang tua ke anak.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '4. Olahraga',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Saat berolahraga, tekanan darah akan meningkat dan membuat pembuluh darah membesar. Kondisi ini lebih sering dialami oleh orang yang rutin berolahraga, seperti atlet, atau orang yang sering melakukan latihan beban.Latihan angkat beban berulang kali dapat mengakibatkan peningkatan aliran darah dan pengerasan otot, sehingga menyebabkan munculnya varises di tangan.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5. Phlebitis',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Phlebitis adalah peradangan pada pembuluh darah vena yang berada di dekat kulit. Radang pembuluh darah vena di tangan dapat menimbulkan varises di tangan. Kondisi ini disertai dengan sakit atau gatal, bengkak, dan perubahan warna pada area yang mengalami peradangan.Phlebitis dapat disebabkan oleh infeksi, cedera, penyakit autoimun, mendapatkan obat melalui suntikan, atau dipasangi tabung plastik kecil (kanula) ke dalam pembuluh darah, seperti menggunakan infus.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '6. Superficial thrombophlebitis',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Superficial thrombophlebitis adalah peradangan pembuluh darah vena yang ditandai dengan pembengkakan, rasa sakit, kemerahan, dan kulit terasa hangat. Kondisi ini disebabkan oleh bekuan darah (trombus), misalnya karena cedera akibat pemasangan kateter infus.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '7. Trombosis vena dalam (DVT)',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral950),
                  maxLines: 2,
                ),
                const Text(
                  'Varises di tangan juga dapat disebabkan oleh deep vein thrombosis (DVT) atau trombosis vena dalam. Kondisi ini yang ditandai dengan bengkak, nyeri hebat, dan kemerahan pada kulit ini terjadi akibat gumpalan darah yang menyumbat aliran darah.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
