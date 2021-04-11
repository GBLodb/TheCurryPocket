#priority 1145141

static invalidMods as string[] = [
    "torcherino",
    "xijun",
    "calculator",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "cyclic",
    "deconstruction",
    "grimpack",
    "avaritia",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "extrabotany",
    "oresniffer",
    "eplus",
    "stm",
    "ISM"
];

for i in invalidMods{
    if(loadedMods in i){
        print("You're so boring.");
        break;
    }
}