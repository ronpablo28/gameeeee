ult = 0;
xult = 0;
gold = 0;
pdamage = 20;
pdmg = 30;
import random;
import time;

crit = random.randint(1, 100);
player = 100;
7
pult = 1.5;
ehit = 0;
phit = 0;
x = 1;
a = 0;
b = 0;
c = 0;
next = 0;
cheat = 0;
crits = 0;
map2 = 0;
map3 = 0;


def retry():
    global gold;
    global gol;
    global gg;
    global x;
    global player;
    global enemy;
    global ult;
    global pdmg;
    global next;
    global map2;
    global map3;

    if enemy <= 0:
        if choice2 == 1:
            gol = 500;
            gold += 500;

        elif choice2 == 2:
            gol = 800;
            gold += 800;
        elif choice2 == 3:
            gol = 1000;
            gold += 1000;

        print("");
        print("YOU WIN!");
        print("1.RETRY  HITS TAKEN: ", ehit);
        print("2.MENU   HITS GAVE: ", phit);
        if choice2 == 1:
            print("YOU'VE EARNED 500 GOLD", "CRITS: ", crits);
        if choice2 == 2:
            print("YOU'VE EARNED 800 GOLD", "CRITS: ", crits);
        if choice2 == 3:
            print("YOU'VE EARNED 1000 GOLD", "CRITS: ", crits);
            if choice4 == 1:
                map2 = 1;
                print("CONGRATULATIONS, YOU'VE UNLOCKED UNDERGROUND MAP");
            elif choice4 == 2:
                map3 = 1;
                print("CONGRATULATIONS, YOU'VE UNLOCKED BOXING RING MAP");
            elif choice4 == 3:
                print("CONGRATULATIONS, YOU ARE THE CHAMPION!!!");

        lamon = int(input("ENTER CHOICE: "));
        match lamon:
            case 1:
                gg = 1;
                player = 100;
                enemy = hp;
                pdmg = 30;

            case 2:
                x = 1;
                gg = 0;
                return;

    if player <= 0:
        if choice2 == 1:
            gol=150;
            gold += 150;
        elif choice2 == 2:
            gol = 300;
            gold += 300;
        elif choice2 == 3:
            gol = 450;
            gold += 450;
        print("YOU LOSE!");
        print("1.RETRY  HITS TAKEN: ", ehit);
        print("2. MENU   HITS GAVE: ", phit);
        gold += 50;
        print("YOU'VE EARNED ", gol, " GOLD       CRITS: ", crits);
        ulit = int(input("ENTER CHOICE: "));
        match ulit:
            case 1:
                gg = 1;
                player = 100;
                enemy = hp;
                pdmg = 30;
            case 2:
                x = 1;
                gg = 0;
                return;


def shop():
    global a;
    global b;
    global c;
    global gold;
    shop = 1;
    while shop == 1:
        print("");
        print("===============================");
        print("1.2500-SPIKED GLOVES:20% CRIT RATE+NEW ULTIMATE- BERSERK:ACTIVATES AFTER 3 CONSECUTIVE HITS = +250%BASE DAMGE ");
        print("");
        print(
            "2.5000-BOMB GLOVES:+200% BASE DAMAGE + NEW ULTIMATE- BLOODLUST BANG: ONCE EVERY 3 CONSECUTIVE HITS = +500% DAMAGE");
        print("");
        print(
            "3.10000-LAVA GLOVES: +150% AND +30% CRIT RATE + NEW ULTIMATE- LAVA MULTXXXXX: ACTIVATES AFTER 5 CONSECUTIVE HITS = STACKING +30% OF BASE DAMAGE");

        print("4.BACK");
        print("===============================");
        print("");
        buy = int(input("WHAT DO YOU WANT TO BUY?"));
        match buy:



            case 1:
                if gold >= 2500:
                    print("YOU BOUGHT SPIKED GLOVES!");
                    a = 1;
                    gold -= 2500;
                elif a == 1:
                    print("YOU ALREADY HAVE THAT!!");
                else:
                    print("NOT ENOUGH MONEY");

            case 2:
                if gold >= 5000:
                    print("YOU BOUGHT BOMB GLOVES!");
                    b = 1;
                    gold -= 5000;
                elif b == 1:
                    print("YOU ALREADY HAVE THAT!!");
                else:
                    print("NOT ENOUGH MONEY");

            case 3:
                if gold >= 10000:
                    print("YOU BROUGHT BOMB GLOVES!");
                    c = 1;
                    gold -= 10000;
                elif c == 1:
                    print("YOU ALREADY HAVE THAT!!");
                else:
                    print("NOT ENOUGH MONEY");

            case 4:
                return


def gamemenu():
    global x;
    global enemy;
    global hp;
    global dmg;
    global edmg;
    global choice6;
    global choice2;
    global gg;
    global choice4;

    gg = 0;
    match choice1:
        case 1:
            print("");
            print("CONTROLS FOR EASY MODE IS QWERTY. FOR MEDIUM AND HARD, MORE LETTERS ARE ADDED.");
            print("=====================");
            print("Select Difficulty");
            print("1.EASY");
            print("2.MEDIUM");
            print("3.HARD");
            print("4.BACK");
            print("=====================");
            choice2 = int(input());
            match choice2:
                case 1:
                    enemy = 500;
                    hp = 500;
                    dmg = 10;
                    edmg = 10;
                    mappy = 1;
                    while mappy == 1:

                        print("");
                        print("=====================");
                        print("CHOOSE MAP");
                        print("1.STREET");
                        print("2.UNDERGROUND");
                        print("3.BOXING RING");
                        print("4.BACK");
                        print("=====================");
                        choice4 = int(input());
                        if choice4 == 4:
                            return;
                        repeat = 1;

                        while repeat == 1:

                            if choice4 in (1, 2, 3):
                                maps = 1;
                            while maps == 1:
                                if choice4 == 1:
                                    print("YOU SELECTED STREET");
                                    mapu = 1;
                                    mappy = 0;
                                    repeat = 0;
                                    maps = 0

                                if choice4 == 2:
                                    if map2 == 1:
                                        print("YOU SELECTED UNDERGROUND");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET, DEFEAT THE HARD DEFFICULTY OF 1ST MAP");
                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;
                                if choice4 == 3:
                                    if map3 == 1:
                                        print("YOU SELECTED BOXING RING, DEFEAT THE HARD DEFFICULTY OF 2ND MAP");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET");
                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;

                            if mapu == 1:
                                gg = 1;
                                x = 0;
                                print("");
                                print("=====================");
                                print("CHOOSE EQUIPMENTS");
                                print("1.NO GLOVES");
                                print("2.SPIKED GLOVES");
                                print("3.BOMB GLOVES");
                                print("4.LAVA GLOVES");
                                print("5.BACK");
                                print("=====================");
                                choice6 = int(input());
                                match choice6:
                                    case 1:
                                        print("");
                                        print("NO GLOVES");
                                        repeat = 0;
                                        mapu = 0;
                                    case 2:
                                        if a == 1:
                                            print("YOU EQUIPPED SPIKED GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 3:
                                        if b == 1:
                                            print("YOU EQUIPPED BOMB GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 4:
                                        if c == 1:
                                            print("YOU EQUIPPED LAVA GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 5:
                                        x = 1;
                                        gg = 0;
                                        return;
                                    case _:
                                        print("INVALID CHOICE!");
                                        repeat = 1;
                                        mapu = 1;
                    print("");

                case 2:
                    enemy = 1000;
                    hp = 1000;
                    dmg = 25;
                    edmg = 25;
                    mappy = 1;
                    while mappy == 1:

                        print("");
                        print("=====================");
                        print("CHOOSE MAP");
                        print("1.STREET");
                        print("2.UNDERGROUND");
                        print("3.BOXING RING");
                        print("4.BACK");
                        print("=====================");
                        choice4 = int(input());
                        if choice4 == 4:
                            return;
                        repeat = 1;

                        while repeat == 1:

                            if choice4 in (1, 2, 3):
                                maps = 1;
                            while maps == 1:
                                if choice4 == 1:
                                    print("YOU SELECTED STREET");
                                    mapu = 1;
                                    mappy = 0;
                                    repeat = 0;
                                    maps = 0

                                if choice4 == 2:
                                    if map2 == 1:
                                        print("YOU SELECTED UNDERGROUND, DEFEAT THE HARD DEFFICULTY OF 1ST MAP");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET");
                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;
                                if choice4 == 3:
                                    if map3 == 1:
                                        print("YOU SELECTED BOXING RING, DEFEAT THE HARD DEFFICULTY OF 2ND MAP");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET");
                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;

                            if mapu == 1:
                                gg = 1;
                                x = 0;
                                print("");
                                print("=====================");
                                print("CHOOSE EQUIPMENTS");
                                print("1.NO GLOVES");
                                print("2.SPIKED GLOVES");
                                print("3.BOMB GLOVES");
                                print("4.LAVA GLOVES");
                                print("5.BACK");
                                print("=====================");
                                choice6 = int(input());
                                match choice6:
                                    case 1:
                                        print("");
                                        print("NO GLOVES");
                                        repeat = 0;
                                        mapu = 0;
                                    case 2:
                                        if a == 1:
                                            print("YOU EQUIPPED SPIKED GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 3:
                                        if b == 1:
                                            print("YOU EQUIPPED BOMB GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 4:
                                        if c == 1:
                                            print("YOU EQUIPPED LAVA GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;

                                    case 5:
                                        gg = 0;
                                        x = 1;
                                        return;
                                    case _:
                                        print("INVALID CHOICE!");
                                        repeat = 1;
                                        mapu = 1;
                                print("");

                case 3:
                    enemy = 1500;
                    hp = 1500;
                    dmg = 50;
                    edmg = 50;

                    mappy = 1;
                    while mappy == 1:

                        print("");
                        print("=====================");
                        print("CHOOSE MAP");
                        print("1.STREET");
                        print("2.UNDERGROUND");
                        print("3.BOXING RING");
                        print("4.BACK");
                        print("=====================");
                        choice4 = int(input());
                        if choice4 == 4:
                            return;
                        repeat = 1;

                        while repeat == 1:

                            if choice4 in (1, 2, 3):
                                maps = 1;
                            while maps == 1:
                                if choice4 == 1:
                                    print("YOU SELECTED STREET");
                                    mapu = 1;
                                    mappy = 0;
                                    repeat = 0;
                                    maps = 0

                                if choice4 == 2:
                                    if map2 == 1:
                                        print("YOU SELECTED UNDERGROUND");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET, DEFEAT THE HARD DEFFICULTY OF 1ST MAP");

                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;
                                if choice4 == 3:
                                    if map3 == 1:
                                        print("YOU SELECTED BOXING RING");
                                        maps = 0;
                                        mappy = 0;
                                        mapu = 1;
                                    else:
                                        print("MAP NOT UNLOCKED YET, DEFEAT THE HARD DEFFICULTY OF 2ND MAP");

                                        maps = 0;
                                        repeat = 0;
                                        mapu = 0;

                            if mapu == 1:
                                gg = 1;
                                x = 0;
                                print("");
                                print("=====================");
                                print("CHOOSE EQUIPMENTS");
                                print("1.NO GLOVES");
                                print("2.SPIKED GLOVES");
                                print("3.BOMB GLOVES");
                                print("4.LAVA GLOVES");
                                print("5.BACK");
                                print("=====================");
                                choice6 = int(input());
                                match choice6:
                                    case 1:
                                        print("");
                                        print("NO GLOVES");
                                        repeat = 0;
                                        mapu = 0;
                                    case 2:
                                        if a == 1:
                                            print("YOU EQUIPPED SPIKED GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 3:
                                        if b == 1:
                                            print("YOU EQUIPPED BOMB GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;
                                    case 4:
                                        if c == 1:
                                            print("YOU EQUIPPED LAVA GLOVES");
                                            repeat = 0;
                                            mapu = 0;
                                        else:
                                            print("YOU DONT HAVE THAT YET");
                                            mapu = 1;
                                            repeat = 1;

                                    case 5:
                                        gg = 0;
                                        x = 1;
                                        return;
                                        return;
                                    case _:
                                        print("INVALID CHOICE!");
                                        repeat = 1;
                                        mapu = 1;
                                print("");

                case 4:
                    return;


def fight():
    global player;
    global enemy;
    global ult;
    global gold;
    global phit;
    global ehit;
    global pdamage;
    global pdmg;
    global crits;

    ult = 0;
    ehit = 0;
    phit = 0
    while player > 0 and enemy > 0 and gg == 1:
        crit = random.randint(1, 100);

        if choice6 == 1:
            pdamage = 20;
            if ult >= 3:
                print("ULT ACTIVATED-TWIN PUNCH");
                pdamage *= 2;

        if choice6 == 2:
            pdamage = 20;
            if crit <= 25:
                pdamage *= 3;
                crits += 1;
            while ult >= 3:
                print("ULT ACTIVATED-BERSERK!!!!!!")
                pdamage *= 2.5;
                ult = 2;

        elif choice6 == 3:
            pdamage = 20 * 2;
            if ult >= 3:
                print("ULTIMATE ACTIVATED-BLOODLUST BANG!")
                pdamage *= 5;
                ult = 0;
                player += 5;

        elif choice6 == 4:
            pdamage = 20 * 1.5;

            if crit <= 30:
                pdamage = pdmg * 3;
                crits += 1;

            while ult >= 5:
                print("ULT ACTIVATED-LAVA MULTXXXX");
                pdmg += 30 * .30;
                phit += 1;
                ult = 4;

        letter = random.choice("QWERTY");
        letter2 = random.choice("QWERTYASDFGH");
        letter3 = random.choice("QWERTYASDFGHZXCVB");
        g = random.choice(["NICE!", "GOOD JOB", "WELL TIMED"]);
        say = random.choice(["WOOOOOOW!!!!", "WHOOOOOOOOHOOOO!!", "UNSTOPPABLE!!!", "UY BAGSAK!!"]);
        esay = random.choice(["AYAAAAAN NAAAA", "NGAWNGAW", "ARAYKUPOOOOO", "MAMAAAAAAA"]);
        print("ENEMY: ", enemy, "| PLAYER: ", player);
        if choice2 == 1:
            dmg = 10;
            print("EASY");
            print(letter);
            start = time.time();
            answer = input().upper();
            end = time.time();
            wrong = end - start;

            if enemy <= hp * 0.25:
                dmg = edmg * 2;

            if wrong <= 3:
                if answer == letter:
                    ult += 1;

                    print(ult);
                    if choice6 == 4:

                        if ult >= 5:

                            if crit <= 30:
                                print("CRITICAL!!!!");
                                print(say, " -", pdamage);
                                enemy -= pdamage;



                            elif crit > 30:

                                enemy -= pdmg;

                                print(say, " -", pdmg);



                        elif ult < 5:
                            if crit <= 30:

                                enemy -= pdamage;
                                print("CRITICAL!!!");
                                print(g, " -", pdamage);
                                phit += 1;
                            else:
                                enemy -= pdamage;
                                print(g, " -", pdamage);
                                phit += 1;



                        else:
                            enemy -= pdamage;
                            print(g, "-", pdamage);

                            phit += 1;
                    else:
                        enemy -= pdamage;
                        if choice6 == 2:
                            if crit <= 25:
                                print("CRITICAL!!!");
                                if ult <= 3:
                                    print(say, " -", pdamage);
                                else:
                                    print(g, " -", pdamage);
                            else:
                                print(g, " -", pdamage);
                        else:
                            print(g, " -", pdamage);

                        phit += 1;


                else:
                    player -= dmg;
                    if enemy <= hp * .25:

                        print(esay, "  -", dmg);
                        ehit += 1;
                    else:
                        print("WROOONG -", dmg);
                        ehit += 1;

                    ult = 0;
                    pdmg = 30;

            else:
                player -= dmg;

                if enemy <= hp * .25:

                    print(esay, "  -", dmg);
                    ehit += 1;
                else:
                    print("TOO SLOW  -", dmg);
                    ehit += 1;
                ult = 0;
                pdmg = 30;
            print("");

        elif choice2 == 2:
            dmg = 25;
            print("MEDIUM")
            print(letter2);
            start = time.time();
            answer = input().upper();
            end = time.time();
            wrong = end - start;
            if enemy <= hp * 0.25:
                dmg = edmg * 2;
            if wrong <= 2:
                if answer == letter2:
                    ult += 1;
                    print(ult);

                    if choice6 == 4:

                        if ult >= 5:
                            if crit <= 30:
                                print("CRITICAL!!!!");

                                print(say, "-", pdamage);
                                enemy -= pdamage;


                            elif crit > 30:

                                enemy -= pdmg;

                                print(say, "-", pdmg);







                        elif ult < 5:
                            if crit <= 30:

                                enemy -= pdamage;
                                print("CRITICAL!!!");
                                print(g, " -", pdamage);
                                phit += 1;
                            else:
                                enemy -= pdamage;
                                print(g, " -", pdamage);
                                phit += 1;



                        else:
                            enemy -= pdamage;
                            print(g, "-", pdamage);

                            phit += 1;
                    else:
                        enemy -= pdamage;
                        if choice6 == 2:
                            if crit <= 25:
                                print("CRITICAL!!!");
                                if ult <= 3:
                                    print(say, " -", pdamage);
                                else:
                                    print(g, " -", pdamage);
                            else:
                                print(g, " -", pdamage);
                        else:
                            print(g, " -", pdamage);

                        phit += 1;




                else:
                    player -= dmg;
                    if enemy <= hp * .25:

                        print(esay, "  -", dmg);
                        ehit += 1;
                    else:
                        print("WROOONG -", dmg);
                        ehit += 1;

                    ult = 0;
                    pdmg = 30;


            else:
                player -= dmg;

                if enemy <= hp * .25:

                    print(esay, "  -", dmg);
                    ehit += 1;
                else:
                    print("TOO SLOW  -", dmg);
                    ehit += 1;
                ult = 0;
                pdmg = 30;
            print("");

        elif choice2 == 3:
            dmg = 50;
            print("HARD");
            print(letter3);
            start = time.time();
            answer = input().upper();
            end = time.time();
            wrong = end - start;

            if enemy <= hp * 0.25:
                dmg = edmg * 2;

            if wrong <= 1.5:
                if answer == letter3:
                    ult += 1;
                    print(ult);
                    print(ult);

                    if choice6 == 4:
                        if ult >= 5:

                            if crit <= 30:
                                print("CRITICAL!!!!");
                                print(say, "-", pdamage);
                                enemy -= pdamage;

                            elif crit > 30:
                                enemy -= pdmg;
                                print(say, "-", pdmg);

                        elif ult < 5:
                            if crit <= 30:
                                enemy -= pdamage;
                                print("CRITICAL!!!");
                                print(g, " -", pdamage);
                                phit += 1;

                            else:
                                enemy -= pdamage;
                                print(g, " -", pdamage);
                                phit += 1;

                        else:
                            enemy -= pdamage;
                            print(g, "-", pdamage);
                            phit += 1;

                    else:
                        enemy -= pdamage;

                        if choice6 == 2:
                            if crit <= 25:
                                print("CRITICAL!!!");

                                if ult <= 3:
                                    print(say, " -", pdamage);

                                else:
                                    print(g, " -", pdamage);

                            else:
                                print(g, " -", pdamage);

                        else:
                            print(g, " -", pdamage);

                        phit += 1;

                else:

                    player -= dmg;

                    if enemy <= hp * .25:
                        print(esay, "  -", dmg);
                        ehit += 1;

                    else:
                        print("WROOONG -", dmg);
                        ehit += 1;

                    ult = 0;
                    pdmg = 30;

            else:

                player -= dmg;

                if enemy <= hp * .25:
                    print(esay, "  -", dmg);
                    ehit += 1;

                else:
                    print("TOO SLOW  -", dmg);
                    ehit += 1;

                ult = 0;
                pdmg = 30;
            print("");


while x == 1:
    print("        PUNCH TYPE");

    print("====================");
    print("1.START             GOLD: ", gold);
    print("2.SHOP");
    print("3.EXIT");
    print("====================");
    print("");
    choice1 = int(input());
    if choice1 == 2:
        shop();
    if choice1 == 1:

        gamemenu();
        while gg == 1:
            print("FIGHT!");
            fight();
            retry();
            while next == 1:
                print("FIGHT!");
                fight2();
                retry2();

    if choice1 == 3:
        print("THANK YOU!");
        exit();
    if choice1 == 110:
        print("YOU'VE UNLOCKED ALL GLOVES AND MAPS!")
        a = 1
        b = 1
        c = 1
        map2 = 1
        map3 = 1

        map3 = 1



