.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/4 v0, 0x0

    const-string v1, "one"

    const-string v2, "two"

    const-string v3, "three"

    const-string v4, "four"

    const-string v5, "five"

    const-string v6, "six"

    const-string v7, "seven"

    const-string v8, "eight"

    const-string v9, "nine"

    const-string v10, "ten"

    const-string v11, "eleven"

    const-string v12, "twelve"

    const-string v13, "thirteen"

    const-string v14, "fourteen"

    const-string v15, "fifteen"

    const-string v16, "sixteen"

    const-string v17, "seventeen"

    const-string v18, "eighteen"

    const-string v19, "nineteen"

    .line 34
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "first"

    const-string v3, "second"

    const-string v4, "third"

    const-string v5, "fourth"

    const-string v6, "fifth"

    const-string v7, "sixth"

    const-string v8, "seventh"

    const-string v9, "eighth"

    const-string v10, "ninth"

    const-string v11, "tenth"

    const-string v12, "eleventh"

    const-string v13, "twelveth"

    const-string v14, "thirteenth"

    const-string v15, "fourteenth"

    const-string v16, "fifteenth"

    const-string v17, "sixteenth"

    const-string v18, "seventeenth"

    const-string v19, "eighteenth"

    const-string v20, "nineteenth"

    .line 42
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "twenty"

    const-string v4, "thirty"

    const-string v5, "forty"

    const-string v6, "fifty"

    const-string v7, "sixty"

    const-string v8, "seventy"

    const-string v9, "eighty"

    const-string v10, "ninety"

    .line 50
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    const-string v3, "twentieth"

    const-string v4, "thirtieth"

    const-string v5, "fortieth"

    const-string v6, "fiftieth"

    const-string v7, "sixtieth"

    const-string v8, "seventieth"

    const-string v9, "eightieth"

    const-string v10, "ninetieth"

    .line 56
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    const-string v2, " thousand"

    const-string v3, " million"

    const-string v4, " billion"

    const-string v5, " trillion"

    const-string v6, " quadrillion"

    const-string v7, " quintillion"

    const-string v8, " sextillion"

    const-string v9, " septillion"

    const-string v10, " octillion"

    const-string v11, " nonillion"

    const-string v12, " decillion"

    const-string v13, " undecillion"

    const-string v14, " duodecillion"

    const-string v15, " tredecillion"

    const-string v16, " quattuordecillion"

    const-string v17, " quindecillion"

    const-string v18, " sexdecillion"

    const-string v19, " septendecillion"

    const-string v20, " octodecillion"

    const-string v21, " novemdecillion"

    const-string v22, " vigintillion"

    .line 62
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 1

    if-eqz p0, :cond_1

    .line 22
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_2

    .line 29
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object p0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_1

    .line 160
    iget-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz p1, :cond_0

    const-string p1, "zeroth"

    goto :goto_0

    :cond_0
    const-string p1, "zero"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-gez p4, :cond_2

    const-string p4, "minus "

    .line 165
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-long p1, p1

    :cond_2
    move-wide v2, p1

    const/4 v4, 0x0

    .line 168
    iget-boolean v5, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    :goto_1
    return-object p3
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .locals 12

    move-object v6, p1

    move/from16 v7, p4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v0, p2, v10

    if-ltz v0, :cond_1

    .line 110
    div-long v2, p2, v10

    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    rem-long v0, p2, v10

    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    const-string v2, "th"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move-wide v0, p2

    :cond_2
    :goto_0
    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    long-to-int v1, v0

    if-eqz p5, :cond_3

    if-nez v7, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v8, p0

    .line 119
    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v1, v0

    if-lt v7, v1, :cond_4

    const-string v0, " times ten to the "

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v7, 0x3

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 123
    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    const-string v0, " power"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-lez v7, :cond_6

    .line 127
    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    move-object v8, p0

    :cond_6
    :goto_2
    return-void
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .locals 3

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 79
    div-int/lit8 v0, p2, 0x64

    .line 80
    rem-int/lit8 p2, p2, 0x64

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-le v0, v1, :cond_0

    .line 83
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "hundred"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_1

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "th"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    const/16 v0, 0x14

    if-lt p2, v0, :cond_4

    .line 94
    div-int/lit8 v0, p2, 0xa

    .line 95
    rem-int/lit8 p2, p2, 0xa

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    .line 96
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    :goto_1
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_4

    const/16 v0, 0x2d

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    if-lez p2, :cond_6

    if-eqz p3, :cond_5

    .line 102
    sget-object p3, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object p3, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    :goto_2
    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 188
    new-instance p1, Ljava/lang/Error;

    const-string p2, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2

    int-to-long v0, p1

    .line 133
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-interface {p3, v0, p2, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2

    .line 149
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method
