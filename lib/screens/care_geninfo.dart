// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class GenInfo extends StatelessWidget {
  static String id = "geninfo";

  // HAHAHA HARD CODED AF

  final List<String> headerText = [
    "How much care and attention does a cat need?",
    "Can I keep a cat on vegetarian food?",
    "Is there a type of cat which doesn’t hunt?",
    "Can I keep a cat indoors?",
    "Should I get an adult cat or a kitten?",
    "What sex of cat should I get?",
    "What breed of cat should I choose?",
    "Can I have a cat if I have a dog?",
    "How many cats can I have together?",
    "What does it cost to keep a cat?",
    "I am allergic to cats – is there any breed which is better than others?",
  ];

  final List<String> subText = [
    "Cats are mostly low maintenance when compared to dogs which needs walking, training, etc. Though they are low maintenance, they do need the care and will vary on their breed, some may need less, some need more care for them. In general, cats are very independent unlike dogs, and can be left alone most of the time. \n\nSome cats may be content with living with a person who rarely gets visitors and leads a quiet life but may be stressed living in a house with lots of visitors and where it has kids and other animals. Other cats, however, may be able to live well in a house filled with interactions and other people & animals. \n\nIf you won’t have the time or mood to groom a cat on a daily basis, or if you are very house-proud that doesn’t want lots of hair everywhere, don’t even think about getting a cat with a long coat. Getting a shorthaired cat is a better option, as most cats are fanatical about their coats and keep them in in immaculate condition. If you’re thinking of getting a white cat but have dark furniture, or vice versa, they WILL leave hairs around whenever they groom themselves. Likewise, a cat is quite likely to sharpen its claws indoors, often on the stair carpet, sometimes on the furniture or even on the wallpaper. Whether your cat does this can depend on the cat itself and the environment you provide for it; however there are things you can do to try and deal with this, but it is best to acknowledge from the outset that your cat is an animal with free will and natural behavior that may not suit someone who needs to have an immaculate house.",
    "You’re better off getting a rabbit rather than a cat. A cat is a carnivore first and foremost and looks and behaves as it does for just this reason. It would be unfair and very dangerous to their health to even attempt keeping it as a vegetarian.",
    "Hunting is a normal behavior of cats. Keeping them indoors may prevent them from hunting and killing anything, but it will need an outlet for this behavior, and not all cats will be happy with an indoor lifestyle. Older cats are likely to hunt less than younger cats and some cats don’t even bother at all. There is no easy way to know how a cat will behave.",
    "You can keep them indoors, but as stated earlier, they may need to find an outlet for their behavior if you restrict them indoors. Of course, there are many risks outside for cats, but a balanced lifestyle for your cat being indoors and outdoors will let your feline friend have a natural behavior.",
    "A kitten gives you the opportunity to take on an animal right from the beginning and treat it and care for it so that it gets the best start in life. You will also be able to get some idea of its character. However, kittens require a lot of attention and some forethought to prevent them from getting into trouble. If you leave them alone, you must make sure they will be safe while you are away. You may also have to organize neutering, initial vaccinations and so on, depending on where you get your kitten from. \n\nWith adult cats, it is at least clear if they are long or short haired.  You should be able to get a good idea of a cat’s personality, although if it is being kept in less-than-ideal circumstances and is stressed or frightened it may act very differently compared to when it is relaxed. A confident adult cat is likely to move in and settle down quite quickly; a nervous one may take more time. It will be much easier to leave an older cat alone in the knowledge that it is not going to get itself into trouble, and it will generally be much less hard work and worry than a kitten. An adult cat will probably already be neutered and vaccinated.",
    "The sex of a kitten doesn’t really matter, as long as you neuter your kitten before it reaches puberty (at about four months of age) when the influence of sex hormones kick in. Un-neutered cats may exhibit unwelcome reproductive behaviors. For example, un-neutered male cats will mark their territory with strong smelling urine while un-neutered female cats can come into season every two weeks if they do not become pregnant. \n\nIf you are getting just one cat or kitten, it doesn’t matter which sex you choose. Equally, if you want two kittens and you are getting two from the same litter, the sex of either cat is probably not important. However, if you have a resident cat and are getting just one kitten or another cat, it may be worth considering going for one of the opposite sex to try and remove some of the competition factor. A kitten may be a better option than another adult cat in such cases as the young cat’s immaturity seems to remove this competition factor – for a while anyway during which time you hope they will get to like each other! Neutering also removes the need for so much competition and makes the choice of sex much less important.",
    "There are many different breeds, some of which will require extra care and attention, for example if they have a very long coat or even no coat at all. (See our A-Z of cat breeds). Some pedigree cats are more people orientated and may not like to be left alone for long periods. If you are out all day at work, it may be worth getting two kittens together for company – do your research about the breed you are interested in. Always make sure that health comes first, no matter what the ‘look’.",
    "If you have other pets there should not be a problem in getting a cat, but you just need to make sure that you take everything into consideration.  If you have a dog, you just need to make sure that you make introductions carefully so that your new cat is not chased or injured while the dog gets used to it. Not all dog types make good companions for cats.",
    "It’s very easy to ‘collect’ cats – they’re addictively beautiful, they’re small and they’re quite easy to care for. Even if they don’t get on, they tend to remove themselves from the situation rather than fight. However, there may be a great deal of tension between cats which owners just don’t pick up on. Cats originate from a largely solitary species and although they can live in groups these are usually related individuals or are self-selected so that cats are not sharing space with cats that they don’t get on with. Cats may start to spray or soil in the house because they’re trying to deal with a situation where they feel under stress because of other cats, and this might be all that owners notice. \n\nIf you have two cats living together very successfully then think very carefully before you add more. If you have three cats living well together then thank your stars and quit while you’re ahead! The trouble with adding more is that it might not be just the relationship between the resident cats and the new one that causes problems; it may upset the whole equilibrium of the resident cats’ relationship and introduce difficulties even between the original cats as tension and stress levels rise. Any new cat needs careful introduction. \n\nThe best way to have two compatible cats is to choose siblings. These will have grown up together, and this usually bodes well for a good future relationship (although never guaranteed!).",
    "If you are buying a pedigree cat, then there will be associated costs, and these may be quite large. Pedigree kittens usually come vaccinated and, in some cases, already neutered. If you are getting a cat from a rescue organization then they may ask for a donation or a fee and again it will probably come already neutered and vaccinated. Kittens or cats from friends or neighbors don’t usually come neutered or vaccinated, wormed, treated for fleas or anything else and it will be up to you to register with a vet and get these things done. Neutering is obviously a one-off cost, but several vaccinations will be required to make sure that a kitten is protected from infectious diseases; thereafter a regular booster vaccination will help to protect it during its life (requirements depend on the cat’s lifestyle and risks associated with that – your vet can advise you).  Then there is food, preventive health care regarding treatment for fleas and ticks and worms, cat litter if you want or need an indoor litter tray, beds, and grooming equipment if you take on a longhaired cat. Microchipping is also recommended in case your cat goes missing. We recommend that you also insure your cat so that if an accident or illness happens then you do not have to worry about the costs. Choose your insurance carefully to make sure you get what you expect or need.",
    "Many people think it’s a cat’s hair that causes us to react to them by sneezing, wheezing, or itching. In fact, it’s a protein or allergen called Fd1, present in feline saliva, which causes the allergy. Because cats groom themselves regularly they have saliva all over their coat.  This dries on the coat and when the cat scratches, moves, or brushes past objects the dust or dander and the hairs which contain the allergen are spread about. Cat-lovers who really want to have a cat but are allergic sometimes think that by choosing a breed with less, little or no coat they can avoid the problem. However, as it is saliva that causes the problem, this is unlikely to help, and although longhaired cats do seem to cause more allergic reactions that’s probably only because, having more hair, they’re also covered with more allergen. \n\nIt’s worth trying out different cats by visiting friends with cats to see if they elicit less of an allergic reaction. Unfortunately, it’s a very difficult problem to get around for people who react or who have family members who are allergic.",
  ];

  @override
  Widget build(BuildContext context) {
    double width_ = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Row(children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(width: width_ * .20, color: Colors.transparent),
                Text(
                  'General Care',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/catgeneral.jpg',
                          scale: 5.0,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Each cat is unique in their own way, whether it is a very friendly & cuddly one or a fearful one. The environment in which a cat grows is an important factor here.',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 30),
                        for (var i = 0; i < headerText.length; i++)
                          headingSub(header: headerText[i], sub: subText[i]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container headingSub({header, sub}) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.purple[600],
            ),
          ),
          SizedBox(height: 14),
          Text(
            sub,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
